### 压力计算
#### Part 1: 简单例子

现在我们来用商业捕鱼为例子来描述一下计算过程。这是个较简单的例子，因为FIS没有子目标：

##### 压力背景:
有两种压力：环境和社会。“gamma” 值描述这两种压力在结合计算总压力时的相对负值。现在定为0.5，这样总压力是两种压力的平均值。

![image](https://cloud.githubusercontent.com/assets/5685517/9638710/fcd1709a-515c-11e5-8b72-4af9cd10fa7d.png)
    
环境压力总共有五种类别：污染（po)， 生境破坏（hd)， 捕鱼压力(fp)， 物种（sp), 气候变暖（cc)。 每种类别又由几种压力层来构成。比如，气候变暖有四个压力层：海平面温度（cc_sst), 紫外线（cc_uv), 海平面上升（slr)，海洋酸性化（cc_acid)。 

社会压力只有一个类别（ss)。 并只有一个压力层（ss_wgi)。 

##### 压力计算的
工具箱里，有这样几个文件是用来计算压力的（ohicore/R) 
  
*Calculate All*: This calculates status/trend, goal index, global scores, resilience, and pressures.  Specifically, it calls the *CalculatePressuresAll* function.
* *CalculatePressuresAll*: This aspect of the function loops through each goal and determines how to deal with it based on whether there are components and other variables.  It calls: *CalculatePressuresScore*
  + *CalculatePressuresScore*: This does the primary calculations for pressures.

##### FIS 压力计算：

这是压力矩阵的头几栏，可能很小:
![image](https://cloud.githubusercontent.com/assets/5685517/9638993/8bdb6e2a-515e-11e5-9133-39aac417e6e9.png)

##### 环境压力
每个类别都是分别这样计算的 (po, fp, cc, sp, hd）。我们以 fp(捕鱼）为例

*STEP 1*: 调出举重和压力层的分数
这是FIS 目标， fp 类别的举重，每个省都有：
![image](https://cloud.githubusercontent.com/assets/5685517/9639119/41b92a0c-515f-11e5-9373-3910b28eab61.png)

这是各省每个压力层的分数：
![image](https://cloud.githubusercontent.com/assets/5685517/9639146/70955184-515f-11e5-95d3-fa737780d8a3.png)

*STEP 2*: 举重 x 压力层分数
![image](https://cloud.githubusercontent.com/assets/5685517/9639179/a77572e2-515f-11e5-8110-dd7b8b65a788.png)

*STEP 3*: 每个省，_举重 x 压力层分数_ 的总和
![image](https://cloud.githubusercontent.com/assets/5685517/9639201/c2f961c2-515f-11e5-83d4-d120d0426a7f.png)

*STEP 4*: 重新调整分数 (根据 0-3 为规模界限，所以  0, 0.5, 1, 2, 3, 5;  变为: 0,  0.1666667,  0.3333333  0.6666667  1.0000000  1.0000000) 这样 所有值都为0-1. 为每个压力类别都重复STEP 1-4： 
![image](https://cloud.githubusercontent.com/assets/5685517/9639337/79e7bd16-5160-11e5-99dd-99e00527dfd0.png)

*STEP 5*: 现在，所有类别的得分被整合。我们用STEP4中得来的加权评分 。每个类别的举重是这个类别中压力层的举重的最大值：
![image](https://cloud.githubusercontent.com/assets/5685517/9640452/8736a918-5166-11e5-81c3-fdf1df8f9fa2.png)

加权平均后的 FIS 环境压力：
![image](https://cloud.githubusercontent.com/assets/5685517/9640465/9a869514-5166-11e5-8f73-98786b78671e.png)

##### 社会压力
这只有一个社会压力类别，包括一个数据层。直接使用。如果有多个类别，和环境压力计算模式相同

*STEP 6*: 计算社会压力

##### 结和环境和社会压力
*STEP 7*:  gamma=0.5, 所以FIS总和压力是社会和环境压力的平均值。