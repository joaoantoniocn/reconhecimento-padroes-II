function [ w1, w2 ] = mediaFeatures( base, legenda )
%MEDIAFEATURES Summary of this function goes here
%   Calcula a média das features de acordo com o metodo proposto no artigo
%   de Tiago.

    w1 = [];
    w2 = [];

    for feature = 1 : length(base(1, :))
        soma1 = 0;
        quant1 = 0;
        soma2 = 0;
        quant2 = 0;
        for exemplo = 1 : length(base)
            
            if strcmp(legenda(exemplo), cellstr('0')) == 1
                soma1 = soma1 + base(exemplo, feature);
                quant1 = quant1 + 1;
            else
                soma2 = soma2 + base(exemplo, feature);
                quant2 = quant2 + 1;
            end
            
        end 
        
       w1 = [w1 soma1/quant1];
       w2 = [w2 soma2/quant2]; 
        
    end
    
    

end

