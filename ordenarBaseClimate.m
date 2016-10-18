function [ baseOrdenada, legendaOrdenada ] = ordenarBaseClimate( base, legenda )
%ORDENARBASECLIMATE Summary of this function goes here
%   ordena a base climate de forma que todas os exemplos da primeira classe
%   venham primeiro

    baseOrdenada0 = [];
    legendaOrdenada0 = [];
    
    baseOrdenada1 = [];
    legendaOrdenada1 = [];

    for i = 1 : length(legenda)
        
        if(strcmp(cellstr('0'), legenda(i)) == 1)
            baseOrdenada0 = [baseOrdenada0; base(i, :)];
            legendaOrdenada0 = [legendaOrdenada0; legenda(i)];
        else
            baseOrdenada1 = [baseOrdenada1; base(i, :)];
            legendaOrdenada1 = [legendaOrdenada1; legenda(i)];
        end
        
    end
    baseOrdenada = [baseOrdenada0; baseOrdenada1];
    legendaOrdenada = [legendaOrdenada0; legendaOrdenada1];
end

