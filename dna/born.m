function [outputArg1] = born(inputArg1)
num = size(inputArg1,1);
population = zeros(num,90);
pick1 = randperm(num,num);%交叉个体
pick2 = randi(90,1,num);%交叉点位
for i = 1:num/2
    a = inputArg1(pick1(i),:);
    b = inputArg1(pick1(i+num/2),:);
    c = a;
    start = min(pick2(1,[i,i+num/2]));
    stop = max(pick2(1,[i,i+num/2]));
    a(1,start:stop) = b(1,start:end);
    b(1,start:end) = c(1,start:stop);
    population(i,:) = a;
    population(i+num/2,:) = b;
end
outputArg1 = population;
end