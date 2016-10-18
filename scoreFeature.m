function [ s ] = scoreFeature( w1, w2, y )
%SCOREFEATURE Summary of this function goes here
%   Calcula o score das features de acordo com o metodo proposto no artigo
%   de Tiago.
%   wi = media das features da classe i
%   y = matriz dos autovalores calculados no PCA

    s = []; % score

    for feature = 1 : length(w1)
        
        yi = sum(y(feature, :));
        if (yi ~= 0)
            s = [s (abs(w1(feature) - w2(feature))/yi)];
        else
            s = [s 0];
        end
        

    end


end

