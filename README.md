# Average_Filtering
## 邻域均值滤波<br/>
实验操作及处理步骤如下：<br/>
(1) 读入一幅原始灰度图像。<br/>
(2) 在读入的原始图像中加入高斯白噪声。<br/>
(3) 设计如下空间域的 3×3 均值滤波器 H 1 和 5×5 高斯滤波器 H 2 ，如下式(1)~(2)所示。<br/>

| |1|1|1|
|-|-|-|-|
|H1=1/10|1|2|1|
| |1|1|1|

| |1|4|7|4|1|
|-|-|-|-|-|-|
||4|16|26|16|4|
|H2=1/273|7|26|47|26|7|
||4|16|26|16|4|
||1|4|7|4|1|

(4) 分别利用 H 1 和 H 2 对第(2)步中加噪声的图像进行滤波处理（需要考虑边界处理，处理方式不限），并对处理结果进行必要的分析。<br/>
