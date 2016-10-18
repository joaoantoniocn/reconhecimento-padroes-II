function [ acertos ] = classificarLinearDiscriminant( teste, treino, legendaTeste, legendaTreino )
%CLASSIFICARKNN Calcula a taxa de acerto na base de teste usando KNN
%   retorna a taxa de acerto

    acertos = 0;
    tree = fitcdiscr(treino,legendaTreino);
    for i = 1 : length(teste(:, 1))

        result = predict(tree,teste(i, :));
        
        if (strcmp(result,legendaTeste(i)) == 1)
            acertos = acertos + 1;
        end    
        
    end    
    
    acertos = acertos / length(teste);

end

