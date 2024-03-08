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
