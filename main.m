clear;

% carregar base
[ matriz, legenda] = lerBase( './iris.txt' );
% separar treino e teste
[ treino, legendaTreino, teste, legendaTeste ] =  separaBase( matriz, legenda );
% calcular taxa de acerto usando 1-NN (4 dimensoes)
resultado = classificarKNN( teste, treino, legendaTeste, legendaTreino );
% plotar grafico das duas primeiras dimensoes do conjunto de treino
plotarGrafico(treino, legendaTreino, 1, 2);
% calcular taxa de acerto usando apenas as duas primeiras dimensoes
teste2 = [teste(:, 1) teste(:, 2)];
treino2 = [treino(:, 1) treino(:, 2)];
resultado2 = classificarKNN( teste2, treino2, legendaTeste, legendaTreino );
% Treinar o PCA no conjunto de treino.
