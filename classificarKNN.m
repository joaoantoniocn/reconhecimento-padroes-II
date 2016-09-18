function [ acertos ] = classificarKNN( teste, treino, legendaTeste, legendaTreino )
%CLASSIFICARKNN Calcula a taxa de acerto na base de teste usando KNN
%   retorna a taxa de acerto

    acertos = 0;
    
    for i = 1 : length(teste(:, 1))
        result = knnclassify(teste(i, :), treino, legendaTreino);
        
        if (strcmp(result,legendaTeste(i)) == 1)
            acertos = acertos + 1;
        end    
        
    end    
    
    acertos = acertos / length(teste);

end

