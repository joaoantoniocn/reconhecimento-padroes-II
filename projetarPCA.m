function [ projecao ] = projetarPCA( base, pca, media )
%PROJETARPCA projeta a base no pca
%   Detailed explanation goes here

    projecao = [];
    
    for i = 1 : length(base)
        Xi1 = 0; % primeira dimensao projetada
        Xi2 = 0; % segunda dimensao projetada
        for j = 1 : length(base(1,:))
            temp1 = (base(i,j) - media(j)) * pca(j,1);
            temp2 = (base(i,j) - media(j)) * pca(j,2);
            
            Xi1 = Xi1 + temp1;
            Xi2 = Xi2 + temp2;
        end
        
        projecao = [projecao; [Xi1 Xi2]];
        
    end    

end

