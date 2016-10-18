function [ matriz, legenda] = lerBaseBanknote( path )
%READBASE 
% Funcao feita para ler a base Banknote.
% Recebe o caminho do arquivo contendo a base.
% Devolve a matriz com os dados da base junto com um array, chamado de legenda, indicando a
% classe que cada exemplo pertence.
%
    fileID = fopen(path,'r');
    banknote = fgetl(fileID);
     
    matriz = [];
    legenda = [];
    
    while ischar(banknote)
        temp = strsplit(banknote, ',');
        legenda = [legenda ; temp(5)];
        matriz = [matriz ; temp(1:4)];
        banknote = fgetl(fileID);
    end
    
    fclose(fileID);
    matriz = str2double(matriz);
end

