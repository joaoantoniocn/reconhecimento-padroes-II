function [ projecao ] = projetarPCAClimate( base, pca, media )
%PROJETARPCA projeta a base no pca
%   Detailed explanation goes here

    projecao = [];
    
    % roda cada exemplo da base
    for i = 1 : length(base(:,1))
        
        % to usando 4 dimensões pq a base Iris tem 4 dimensões
        % OBS: ajustar o número de dimensões para cada base
        Xi1 = 0; % primeira dimensao projetada
        Xi2 = 0; % segunda dimensao projetada
        Xi3 = 0;
        Xi4 = 0;
        Xi5 = 0;
        Xi6 = 0;
        Xi7 = 0;
        Xi8 = 0;
        Xi9 = 0;
        Xi10 = 0;
        Xi11 = 0;
        Xi12 = 0;
        Xi13 = 0;
        Xi14 = 0;
        Xi15 = 0;
        Xi16 = 0;
        Xi17 = 0;
        Xi18 = 0;
        
        % roda cada dimensão do exemplo i
        for j = 1 : length(base(1,:))
            temp1 = (base(i,j) - media(j)) * pca(j,1);
            temp2 = (base(i,j) - media(j)) * pca(j,2);
            temp3 = (base(i,j) - media(j)) * pca(j,3);
            temp4 = (base(i,j) - media(j)) * pca(j,4);
            temp5 = (base(i,j) - media(j)) * pca(j,5);
            temp6 = (base(i,j) - media(j)) * pca(j,6);
            temp7 = (base(i,j) - media(j)) * pca(j,7);
            temp8 = (base(i,j) - media(j)) * pca(j,8);
            temp9 = (base(i,j) - media(j)) * pca(j,9);
            temp10 = (base(i,j) - media(j)) * pca(j,10);
            temp11 = (base(i,j) - media(j)) * pca(j,11);
            temp12 = (base(i,j) - media(j)) * pca(j,12);
            temp13 = (base(i,j) - media(j)) * pca(j,13);
            temp14 = (base(i,j) - media(j)) * pca(j,14);
            temp15 = (base(i,j) - media(j)) * pca(j,15);
            temp16 = (base(i,j) - media(j)) * pca(j,16);
            temp17 = (base(i,j) - media(j)) * pca(j,17);
            temp18 = (base(i,j) - media(j)) * pca(j,18);
            
            Xi1 = Xi1 + temp1;
            Xi2 = Xi2 + temp2;
            Xi3 = Xi3 + temp3;
            Xi4 = Xi4 + temp4;
            Xi5 = Xi5 + temp5;
            Xi6 = Xi6 + temp6;
            Xi7 = Xi7 + temp7;
            Xi8 = Xi8 + temp8;
            Xi9 = Xi9 + temp9;
            Xi10 = Xi10 + temp10;
            Xi11 = Xi11 + temp11;
            Xi12 = Xi12 + temp12;
            Xi13 = Xi13 + temp13;
            Xi14 = Xi13 + temp14;
            Xi15 = Xi13 + temp15;
            Xi16 = Xi13 + temp16;
            Xi17 = Xi13 + temp17;
            Xi18 = Xi13 + temp18;
        end
        
        projecao = [projecao; [Xi1 Xi2 Xi3 Xi4 Xi5 Xi6 Xi7 Xi8 Xi9 Xi10 Xi11 Xi12 Xi13 Xi14 Xi15 Xi16 Xi17 Xi18]];
        
    end    

end

