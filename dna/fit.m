function [outputArg1] = fit(inputArg1,inputArg2)
%返回i行一列表格fitness，第i行记录种群第i个个体的成本
num = size(inputArg1,1);
fitness = zeros(num,1);
fitness(1) = cost(inputArg1(1,:),inputArg2);
for i = 2:num
    has_check = false;
    for j = 1:i-1%如果已经计算过同种个体成本，就不必再次计算
        if inputArg1(j,:) == inputArg1(i,:)
            has_check = true;
            break;
        end
    end
    if has_check
        fitness(i) = fitness(j);
    else
        fitness(i) = cost(inputArg1(i,:),inputArg2);
    end
end
outputArg1 = fitness;
end