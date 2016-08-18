function [ pca ] = PCA(base)
% Calcula PCA para base de dados
%   Detailed explanation goes here
    
    % usando funcoes prontas do matlab.
    % media = mean(base);
    % variancia = var(base);
     matrizCovariancia = cov(base);

% -------- calculando variancia (na mao)
%     variancia = [];
%     for i = 1 : length(base(1,:))
%        variancia = [variancia variancia(base(:,i))];
%     end    
% -------- calculando matriz de covariancia (na mao)
%     matrizCovariancia = [];
%     for i = 1 : length(base(1,:))
%         temp = [];
%         for j = 1 : length(base(1,:))
%             temp = [temp covariancia(base(:,i), base(:, j))];
%         end
%         matrizCovariancia = [matrizCovariancia ; temp];
%     end    
      [autovetores autovalores] = eig(matrizCovariancia);
      [autovetores autovalores] = ordenar( autovetores, autovalores );
       pca = autovetores;
end

