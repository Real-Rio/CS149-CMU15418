# CS149 2023fall assignment记录

课程主页：https://gfxcourses.stanford.edu/cs149/fall23/

视频我是在 b 站看的 2018 年的，作业写的是 2023 年的，实测这几年的 assignment 都没有什么变化



## Assignment1 Performance Analysis on a Quad-Core CPU

### Environment Setup

我是用的 m1 pro Mac ，8 核 CPU，8 个线程



### Program 1：Parallel Fractal Generation Using Threads

需要在 `workerTreadStart`中调用`mandelbrotSerial`函数，至于具体如何将任务分配给每一个线程，这是这个 program 希望我们能自己探索的

```go
int id = args->threadId;
int totalRows = args->height / args->numThreads;
if (args->height % args->numThreads != 0)
{
  totalRows++;
}
int startRow = id * totalRows;
if (startRow >= args->height)
{
  return;
}
if (startRow + totalRows > args->height)
{
  totalRows = args->height - startRow;
}
mandelbrotSerial(args->x0, args->y0, args->x1, args->y1, args->width, args->height, startRow, totalRows, args->maxIterations, args->output);
```

一开始自然而然地想到按照分块进行划分，即每个线程按照图片从上到下，各自负责一段区域的计算，最后算出来的加速比与线程数量关系如下图
<img src="https://cdn.jsdelivr.net/gh/Real-Rio/pictures/img/Figure_1.png" alt="Figure_1" style="zoom:72%;" />

可以看到在线程数为 3 的时候，加速比竟然比线程数为 2 时还要小，原因是 3 个线程任务分配不均衡，View1 图像计算任务大部分集中在中间区域，所以 Thread1 相比其他 2 个线程计算量更大，最后可能其他两个线程早都执行完了还需要等待 Thread1 的完成

<img src="https://cdn.jsdelivr.net/gh/Real-Rio/pictures/img/image-20240308140805251.png" alt="image-20240308140805251" style="zoom: 25%;" />

```
Thread 2 time: 83.439 ms
Thread 0 time: 83.503 ms
Thread 1 time: 255.239 ms
```

为了让每个线程的计算量接近，那么就不能根据图像本身进行划分，可以以更小的细粒度，比如每个线程依次对每个像素进行运算，修改`mandelbrotSerial`的代码为

```go
void mandelbrotSerial2(
    float x0, float y0, float x1, float y1,
    int width, int height,
    int startIdx, int numThreads,
    int maxIterations,
    int output[])
{
  float dx = (x1 - x0) / width;
  float dy = (y1 - y0) / height;

  for (int idx = startIdx; idx < width * height; idx += numThreads)
  {
    int i = idx % width;
    int j = idx / width;
    float x = x0 + i * dx;
    float y = y0 + j * dy;

    output[idx] = mandel(x, y, maxIterations);
  }
}

```

然后在`workerThreadStart`中调用

```go
mandelbrotSerial2(args->x0, args->y0, args->x1, args->y1, args->width, args->height, args->threadId, args->numThreads, args->maxIterations, args->output);

```

改进后的加速比为
<img src="https://cdn.jsdelivr.net/gh/Real-Rio/pictures/img/Figure_2.png" alt="Figure_2" style="zoom:72%;" />

可以看出在线程数为 8 之前，加速比上升得非常均匀，8 之后是因为 CPU 只支持 8 线程并行，所以加速比不升反降

作图的 python 程序为

```python
import subprocess
import re
import matplotlib.pyplot as plt

# 不同的numThreads值
numThreads_values = list(range(1, 17))  # 根据需要修改

# 存储加速比的列表
speedup_values = []

# 调用命令行程序，并获取输出
for numThreads in numThreads_values:
    command = f"./mandelbrot -t {numThreads}"
    output = subprocess.check_output(command, shell=True, encoding='utf-8')

    # 从输出中提取加速比
    match = re.search(r"\(([\d.]+)x speedup", output)
    if match:
        speedup = float(match.group(1))
        speedup_values.append(speedup)
    else:
        speedup_values.append(1.0)  # 如果无法提取加速比，则默认为1.0

# 绘制折线图
plt.plot(numThreads_values, speedup_values, marker='o')

# 添加图表标题和轴标签
plt.title('Mandelbrot Speedup')
plt.xlabel('numThreads')
plt.ylabel('Speedup')

# 显示图表
plt.show()

```

