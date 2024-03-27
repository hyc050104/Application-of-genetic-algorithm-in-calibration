function [outputArg1] = choose(inputArg1,inputArg2,inputArg3)
%锦标赛选择法
num = size(inputArg1,1);
picknum = num*inputArg3;
population = zeros(num,90);
for i = 1:num
    pick = randperm(num,picknum);
    [~,index] = min(inputArg2(pick,1));
    population(i,:) = inputArg1(pick(index),:);
end
outputArg1 = population;
end
