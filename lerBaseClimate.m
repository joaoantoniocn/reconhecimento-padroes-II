function [ matriz, legenda] = lerBaseClimate( path )
%READBASE 
% Funcao feita para ler a base Banknote.
% Recebe o caminho do arquivo contendo a base.
% Devolve a matriz com os dados da base junto com um array, chamado de legenda, indicando a
% classe que cada exemplo pertence.
%
    fileID = fopen(path,'r');
    climate = fgetl(fileID);
     
    matriz = [];
    legenda = [];
    climate = fgetl(fileID);
    while ischar(climate)
        temp = strsplit(climate, ' ');
       % legenda = [legenda ; temp(21)];
        matriz = [matriz ; temp(4:22)];
        climate = fgetl(fileID);
    end
    
    legenda = matriz(:, 19);
    matriz(:, 19) = [];
    
    fclose(fileID);
    matriz = str2double(matriz);
end

