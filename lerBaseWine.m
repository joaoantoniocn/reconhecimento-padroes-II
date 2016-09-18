function [ matriz, legenda] = lerBaseWine( path )
%READBASE 
% Funcao feita para ler a base Iris.
% Recebe o caminho do arquivo contendo a base.
% Devolve a matriz com os dados da base junto com um array, chamado de legenda, indicando a
% classe que cada exemplo pertence.
%
    fileID = fopen(path,'r');
    wine = fgetl(fileID);
     
    %temp = strsplit(iris, ',');
    
    matriz = [];
    legenda = [];
    
    while ischar(wine)
        temp = strsplit(wine, ',');
        legenda = [legenda ; temp(1)];
        matriz = [matriz ; temp(2:14)];
        wine = fgetl(fileID);
    end
    
    fclose(fileID);
    matriz = str2double(matriz);
end

