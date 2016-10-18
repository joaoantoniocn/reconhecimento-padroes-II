% Replicar o artigo "Minumum Classification Error Principal Component
% Analysis". Nome do arquivo: bayes_pca_kdmile.pdf

clear;
% carregar base
[ matriz, legenda] = lerBaseClimate( './base/climate.txt' );
[matriz, legenda] = ordenarBaseClimate(matriz, legenda);

resultadoNormal = 0;
resultadoScore = 0;
for i = 1 : 100
    [ folderTreino, legendaFolderTreino, folderTeste, legendaFolderTeste ] =  separaBaseAleatorio( matriz, legenda, 46);
    
    % Calcular PCA
    [folderPCA, autovalores] = PCA(folderTreino);
    
    % Projetar PCA
    projecaoTreino =  projetarPCAClimate( folderTreino, folderPCA, mean(folderTreino) );
    projecaoTeste =  projetarPCAClimate( folderTeste, folderPCA, mean(folderTreino) );
    
    % media das features de acordo com equacao (13) no artigo
    [w1, w2] = mediaFeatures(projecaoTreino, legendaFolderTreino);
    
    % scores
    score = scoreFeature(w1, w2, autovalores);
    
    % novo pca ordenado pelo Score (do maior pro menor)
    [PCAScore, scoreOrdenado] = ordenarScore(folderPCA, score);
    
    % Projetar com PCAScore
    projecaoScoreTreino = projetarPCAClimate( folderTreino, PCAScore, mean(folderTreino) );
    projecaoScoreTeste = projetarPCAClimate( folderTeste, PCAScore, mean(folderTreino) );
    
    % Classificar | classificarKNN | classificarTree
    resultadoNormal = resultadoNormal + classificarKNN( projecaoTeste(:, 1:1), projecaoTreino(:, 1:1), legendaFolderTeste, legendaFolderTreino );
    resultadoScore = resultadoScore + classificarKNN( projecaoScoreTeste(:, 1:1), projecaoScoreTreino(:, 1:1), legendaFolderTeste, legendaFolderTreino );
end
resultadoNormal = resultadoNormal / 100;
resultadoScore = resultadoScore / 100;