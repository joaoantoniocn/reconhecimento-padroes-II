function [ variancia ] = variancia( variavel )
%VARIANCIA Calcula variancia
%   Detailed explanation goes here

    % usando funcao pronta do matlab
    % variancia = var(variavel); 
    variancia = 0;

    for i = 1 : length(variavel)
        temp = (variavel(i) - mean(variavel)); 
        variancia = variancia + (temp * temp);
    end  
    
    variancia = variancia / (length(variavel)-1);

end

