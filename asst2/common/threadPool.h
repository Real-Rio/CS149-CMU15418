#ifndef THREADPOOL_H
#define THREADPOOL_H

#include <thread>
#include <queue>
#include <vector>
#include <unordered_map>

// Thread Pool
class ThreadPool
{
public:
    ThreadPool(size_t numThreads) : taskCount(0), stop(false)
    {
        for (size_t i = 0; i < numThreads; ++i)
        {
            threads.emplace_back([this]
                                 {
                while (true) {
                    std::function<void()> task;

                    {
                        std::unique_lock<std::mutex> lock(mutex);
                        condition.wait(lock, [this] { return stop || !tasks.empty(); });
                        if (stop ) // 线程池即将销毁
                            return;
                        task = std::move(tasks.front());
                        tasks.pop();
                    }

                    task();

                     {
                        std::unique_lock<std::mutex> lock(mutexCount);
                        --taskCount;
                        if (taskCount == 0) {
                            conditionCount.notify_all();
                        }
                    }
                } });
        }
    }

    void waitAllTasks()
    {
        std::unique_lock<std::mutex> lock(mutexCount);
        conditionCount.wait(lock, [this]
                            { return taskCount == 0; });
    }

    template <typename Func, typename... Args>
    void enqueue(Func &&func)
    {

        {
            std::unique_lock<std::mutex> lock(mutex);
            tasks.emplace([func]
                          { func(); });
        }
        condition.notify_one();
    }

    ~ThreadPool()
    {
        {
            std::unique_lock<std::mutex> lock(mutex);
            stop = true;
        }
        condition.notify_all();
        for (std::thread &thread : threads)
            thread.join();
    }

private:
    std::vector<std::thread> threads;
    std::queue<std::function<void()>> tasks;

    std::mutex mutex;
    std::condition_variable condition;

    std::condition_variable conditionCount;
    std::mutex mutexCount;

    size_t taskCount;

    bool stop;
};

class ThreadPoolWithDeps
{
public:
    ThreadPoolWithDeps(size_t numThreads) : stop(false)
    {
        for (size_t i = 0; i < numThreads; ++i)
        {
            // threads.emplace_back();
            threads.emplace_back(std::thread(&ThreadPoolWithDeps::worker, this));
        }
    }

    void worker()
    {
        while (!stop)
        {

            std::function<void()> task;
            TaskID task_id;
            bool runtask = false;

            // TODO:如何增加并行性，使得有线程从 waiting_tasks_ 中取出 task 放入 ready_tasks_ 的过程中，其他线程可以从 ready_tasks_ 中取出 task 执行
            mutex.lock();
            if (ready_tasks_.empty())
            {
                // check waiting_tasks_
                for (auto it = waiting_tasks_.begin(); it != waiting_tasks_.end();) 
                {
                    task_id = it->first;
                    if (checkDeps(task_id))
                    {
                        ready_tasks_.emplace(*it);
                        id2readyTaskNum[task_id] += 1;
                        deps_.erase(task_id);
                        it = waiting_tasks_.erase(it);
                        runtask = true;
                        // break;
                    }
                    else
                    {
                        ++it;
                    }
                }
                if (!runtask)
                {
                    mutex.unlock();
                    continue;
                }
                // waiting_mutex_.unlock();
            }

            // 从 ready_tasks_ 中取出 task
            task_id = ready_tasks_.front().first;
            task = std::move(ready_tasks_.front().second);
            ready_tasks_.pop();

            mutex.unlock();

            task();

            std::lock_guard<std::mutex> lock(mutex);
            id2readyTaskNum[task_id] -= 1;
            if (id2readyTaskNum[task_id] == 0)
            {
                id2readyTaskNum.erase(task_id);
                ConAllDone_.notify_one();
            }
        }
    }

    bool checkDeps(TaskID id)
    {
        if (deps_.find(id) == deps_.end())
            return true;
        bool res = true;
        for (auto dep : deps_[id])
        {
            if (deps_.find(dep) != deps_.end() || id2readyTaskNum.find(dep) != id2readyTaskNum.end())
            {
                res = false;
                break;
            }
        }
        return res;
    }

    void waitAllTasks()
    {
        // 所有 task 完成后才返回
        std::unique_lock<std::mutex> lock(mutex);
        ConAllDone_.wait(lock, [this]
                         { return waiting_tasks_.empty() && id2readyTaskNum.empty(); });
    }

    template <typename Func>
    void enqueue(Func &&func, int taskID)
    {
        // printf("enqueue taskID: %d\n", taskID);
        std::lock_guard<std::mutex> lock(mutex);
        // 无依赖直接放入 ready 队列
        if (deps_.find(taskID) == deps_.end())
        {
            // std::unique_lock<std::mutex> lock(ready_mutex_);
            ready_tasks_.emplace(taskID, [func]
                                 { func(); });
            id2readyTaskNum[taskID] += 1;
            // condition.notify_one();
            return;
        }

        {
            // std::unique_lock<std::mutex> lock(waiting_mutex_);
            waiting_tasks_.emplace_back(taskID, [func]
                                        { func(); });
        }
        // condition.notify_one();
        return;
    }

    void setDeps(TaskID id, const std::vector<TaskID> &deps)
    {
        if (deps.empty())
            return;
        // std::unique_lock<std::mutex> lock(waiting_mutex_);
        std::unique_lock<std::mutex> lock(mutex);

        deps_[id] = std::move(deps);
    }

    ~ThreadPoolWithDeps()
    {
        {
            std::unique_lock<std::mutex> lock(mutex);
            stop = true;
        }
        // condition.notify_all();
        for (std::thread &thread : threads)
            thread.join();
    }

private:
    std::vector<std::thread> threads;

    std::mutex mutex;
    std::condition_variable ConAllDone_;
    bool stop;

    // ready sector
    // std::mutex ready_mutex_;
    std::queue<std::pair<TaskID, std::function<void()>>> ready_tasks_;
    std::unordered_map<TaskID, int> id2readyTaskNum;

    // waiting sector
    // std::mutex waiting_mutex_;
    std::vector<std::pair<TaskID, std::function<void()>>> waiting_tasks_;
    std::unordered_map<TaskID, std::vector<TaskID>> deps_; // 记录依赖中最大的 taskID
};

#endif