function [outputArg1] = single_errorcost(inputArg1,inputArg2)
%计算标定误差成本
%输入依次为1*90拟合电压值矩阵，1*90实际电压值矩阵
cost = 0;
for i = 1:90
    if abs(inputArg1(i)-inputArg2(i)) <= 0.5
    elseif abs(inputArg1(i)-inputArg2(i)) <= 1.0
        cost = cost + 1;
    elseif abs(inputArg1(i)-inputArg2(i)) <= 1.5
        cost = cost + 10;
    elseif abs(inputArg1(i)-inputArg2(i)) <= 2.0
        cost = cost + 30;
    else
        cost = cost + 80000;
    end
    outputArg1 = cost;
end
end