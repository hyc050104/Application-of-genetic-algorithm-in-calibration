function [outputArg1] = initial(inputArg1, inputArg2)
population = rand(inputArg1,90);
p = inputArg2/90;
for i = 1:numel(population)
    if population(i) < p
        population(i) = 1;
    else
        population(i) = 0;
    end
end
outputArg1 = population;
end