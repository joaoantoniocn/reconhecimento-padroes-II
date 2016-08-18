function [ covariancia ] = covariancia( v1, v2 )
%VARIANCIA Calcula a covariancia entre a v1 (variavel1) e v2 (variavel2)
%   Detailed explanation goes here

    % usando funcao pronta do matlab
    % covariancia = cov(variavel); 
    covariancia = 0;

    for i = 1 : length(v1)
        temp = (v1(i) - mean(v1)) * (v2(i) - mean(v2)); 
        covariancia = covariancia + temp;
    end  
    
    covariancia = covariancia / (length(v1)-1);

end

