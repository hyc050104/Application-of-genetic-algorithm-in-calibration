num1 = 50;
%初始种群数量
num2 = 200;
%迭代次数
expect = 10;
%expect表示初始种群的拟合点数的期望个数，调整expect值10，20...80,通过比较各组找到的最佳成本确定拟合点最佳个数在哪一组附近，在此基础上继续调小范围，例如5，7...15
mod = 100;
%mod决定对一个个体使用多少组实际数据进行成本计算；当需要快速计算成本从而锁定拟合个数范围时，mod取小一点；当细致探索最佳拟合点时，mod调大
rate = 0.2;
%控制每轮锦标赛选择的参与比例
p = 0.05;
%变异概率

population = initial(num1, expect);%初始化种群
fitness = fit(population,mod);%适应度计算

for i =1:num2
    population = choose(population, fitness,rate);%选择
    population = born(population);%交叉
    population = mutation(population,p);%变异
    fitness = fit(population,mod);
end

f_plot(population,fitness);%打印结果
