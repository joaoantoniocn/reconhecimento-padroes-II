% Atividade do dia: utilizar o classificador 1-NN, em experimentos do tipo 
% 10 fold cross validation, calcular a taxa de acerto média e o 
% desvio padrão da taxa de acerto utilizando 1, ..., d características 
% extraídas com PCA, em que d é a dimensão original da base. Para as base 
% de dados abaixo. Obs.: São d médis de taxas de acerto para cada base.
% http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data
% Iris.

clear;

% carregar base
[ matriz, legenda] = lerBaseWine( './base/wine.txt' );
nameClasses = [cellstr('1') cellstr('2') cellstr('3')];

% Separar base em folders
% [ folder1Treino, legendaFolder1Treino, folder1Teste, legendaFolder1Teste ] =  separaBase( matriz, legenda, 4, 1, nameClasses );
% [ folder2Treino, legendaFolder2Treino, folder2Teste, legendaFolder2Teste ] =  separaBase( matriz, legenda, 4, 2, nameClasses );
% [ folder3Treino, legendaFolder3Treino, folder3Teste, legendaFolder3Teste ] =  separaBase( matriz, legenda, 4, 3, nameClasses );
% [ folder4Treino, legendaFolder4Treino, folder4Teste, legendaFolder4Teste ] =  separaBase( matriz, legenda, 4, 4, nameClasses );
% [ folder5Treino, legendaFolder5Treino, folder5Teste, legendaFolder5Teste ] =  separaBase( matriz, legenda, 4, 5, nameClasses );
% [ folder6Treino, legendaFolder6Treino, folder6Teste, legendaFolder6Teste ] =  separaBase( matriz, legenda, 4, 6, nameClasses );
% [ folder7Treino, legendaFolder7Treino, folder7Teste, legendaFolder7Teste ] =  separaBase( matriz, legenda, 4, 7, nameClasses );
% [ folder8Treino, legendaFolder8Treino, folder8Teste, legendaFolder8Teste ] =  separaBase( matriz, legenda, 4, 8, nameClasses );
% [ folder9Treino, legendaFolder9Treino, folder9Teste, legendaFolder9Teste ] =  separaBase( matriz, legenda, 4, 9, nameClasses );
[ folder10Treino, legendaFolder10Treino, folder10Teste, legendaFolder10Teste ] =  separaBase( matriz, legenda, 4, 10, nameClasses );

% Treinar o PCA
% folder1PCA = PCA(folder1Treino);
% folder2PCA = PCA(folder2Treino);
% folder3PCA = PCA(folder3Treino);
% folder4PCA = PCA(folder4Treino);
% folder5PCA = PCA(folder5Treino);
% folder6PCA = PCA(folder6Treino);
% folder7PCA = PCA(folder7Treino);
% folder8PCA = PCA(folder8Treino);
% folder9PCA = PCA(folder9Treino);
folder10PCA = PCA(folder10Treino);

% Calcular taxa de acerto (Sem PCA)
% resultado1 = classificarKNN( folder1Teste, folder1Treino, legendaFolder1Teste, legendaFolder1Treino );
% resultado2 = classificarKNN( folder2Teste, folder2Treino, legendaFolder2Teste, legendaFolder2Treino );
% resultado3 = classificarKNN( folder3Teste, folder3Treino, legendaFolder3Teste, legendaFolder3Treino );
% resultado4 = classificarKNN( folder4Teste, folder4Treino, legendaFolder4Teste, legendaFolder4Treino );
% resultado5 = classificarKNN( folder5Teste, folder5Treino, legendaFolder5Teste, legendaFolder5Treino );
% resultado6 = classificarKNN( folder6Teste, folder6Treino, legendaFolder6Teste, legendaFolder6Treino );
% resultado7 = classificarKNN( folder7Teste, folder7Treino, legendaFolder7Teste, legendaFolder7Treino );
% resultado8 = classificarKNN( folder8Teste, folder8Treino, legendaFolder8Teste, legendaFolder8Treino );
% resultado9 = classificarKNN( folder9Teste, folder9Treino, legendaFolder9Teste, legendaFolder9Treino );
% resultado10 = classificarKNN( folder10Teste, folder10Treino, legendaFolder10Teste, legendaFolder10Treino );

% Projetar PCA
projecaoTreino1 =  projetarPCAWine( folder10Treino, folder10PCA, mean(folder10Treino) );
projecaoTeste1 =  projetarPCAWine( folder10Teste, folder10PCA, mean(folder10Treino) );


% Calcular taxa de acerto (Com PCA)
 resultado1 = classificarKNN( projecaoTeste1(:, 1), projecaoTreino1(:, 1), legendaFolder10Teste, legendaFolder10Treino );
 
 