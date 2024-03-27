function [outputArg1] = mutation(inputArg1,inputArg2)
for i = 1:numel(inputArg1)
    if rand<inputArg2
        %变异概率
        if inputArg1(i) == 0
            inputArg1(i) = 1;
        else
            inputArg1(i) = 0;
        end
    end
end
outputArg1 = inputArg1;
end