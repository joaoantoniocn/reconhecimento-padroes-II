function [ projecao ] = projetarPCA( base, pca, media )
%PROJETARPCA projeta a base no pca
%   Detailed explanation goes here

    projecao = [];
    
    % roda cada exemplo da base
    for i = 1 : length(base)
        
        % to usando 4 dimensões pq a base Iris tem 4 dimensões
        % OBS: ajustar o número de dimensões para cada base
        Xi1 = 0; % primeira dimensao projetada
        Xi2 = 0; % segunda dimensao projetada
        Xi3 = 0;
        Xi4 = 0;
        
        % roda cada dimensão do exemplo i
        for j = 1 : length(base(1,:))
            temp1 = (base(i,j) - media(j)) * pca(j,1);
            temp2 = (base(i,j) - media(j)) * pca(j,2);
            temp3 = (base(i,j) - media(j)) * pca(j,3);
            temp4 = (base(i,j) - media(j)) * pca(j,4);
            
            Xi1 = Xi1 + temp1;
            Xi2 = Xi2 + temp2;
            Xi3 = Xi3 + temp3;
            Xi4 = Xi4 + temp4;
        end
        
        projecao = [projecao; [Xi1 Xi2 Xi3 Xi4]];
        
    end    

end

