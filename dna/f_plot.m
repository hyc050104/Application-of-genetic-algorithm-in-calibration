function [] = f_plot(inputArg1,inputArg2)
[~,index] = min(inputArg2);
dot =[];
best = inputArg1(index,:);
for i = 1:90
    if best(i) == 1
        dot = cat(2,dot,i-21);
    end
end
disp('最佳温度拟合点为');
disp(dot);
disp('摄氏度');
end