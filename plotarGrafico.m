function [ ] = plotarGrafico( base, legenda, dimensao1, dimensao2 )
%PLOTARGRAFICO Summary of this function goes here
%   Detailed explanation goes here

    setosa = [];
    versicolo = [];
    virginica = [];
    
    for i = 1 : length(base)
        if (strcmp(legenda(i),'Iris-setosa') == 1)
            setosa = [setosa ; base(i, dimensao1) base(i, dimensao2)];
        elseif (strcmp(legenda(i),'Iris-versicolor') == 1)  
            versicolo = [versicolo ; base(i, dimensao1) base(i, dimensao2)];
        elseif (strcmp(legenda(i),'Iris-virginica') == 1)   
            virginica = [virginica ; base(i, dimensao1) base(i, dimensao2)];
        end           
    end
    
    scatter(setosa(:, 1), setosa(:, 2), 10, 'b');
    hold on;
    scatter(versicolo(:, 1), versicolo(:, 2), 10, 'r');
    scatter(virginica(:, 1), virginica(:, 2), 10, 'g');
    
    
    
end

