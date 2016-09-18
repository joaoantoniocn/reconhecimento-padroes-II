% Referente a atividade do arquivo aula01.pdf

clear;

% carregar base
[ matriz, legenda] = lerBase( './base/iris.txt' );

% separar treino e teste
nameClasses = [cellstr('Iris-setosa') cellstr('Iris-versicolor') cellstr('Iris-virginica')];
[ treino, legendaTreino, teste, legendaTeste ] =  separaBase( matriz, legenda, 10, 1, nameClasses );

% calcular taxa de acerto usando 1-NN (4 dimensoes)
resultado = classificarKNN( teste, treino, legendaTeste, legendaTreino );

% plotar grafico das duas primeiras dimensoes do conjunto de treino
plotarGrafico(treino, legendaTreino, 1, 2, 'Duas primeiras dimensoes no conjunto de treino');

% calcular taxa de acerto usando apenas as duas primeiras dimensoes
teste2 = [teste(:, 1) teste(:, 2)];
treino2 = [treino(:, 1) treino(:, 2)];
resultado2 = classificarKNN( teste2, treino2, legendaTeste, legendaTreino );

% Treinar o PCA no conjunto de treino.
pca = PCA(treino);

% Projetar conjunto de treino e teste com 2 componentes principais do pca
projecaoTreino =  projetarPCA( treino, pca, mean(treino) );
projecaoTeste =  projetarPCA( teste, pca, mean(treino) );

% Gerar o gráfico para o conjunto de treino com as duas dimensões extraídas com PCA, 
% diferenciando cada classe.
plotarGrafico(projecaoTreino, legendaTreino, 1, 2, 'Projecao PCA conjunto de treino');
plotarGrafico(projecaoTeste, legendaTeste, 1, 2, 'Projecao PCA conjunto de teste');

% Calcular a taxa de acerto utilizando as duas características extraídas com PCA.
resultadoPCA = classificarKNN( projecaoTeste, projecaoTreino, legendaTeste, legendaTreino );
