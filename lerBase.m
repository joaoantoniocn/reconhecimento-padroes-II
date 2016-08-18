function [ matriz, legenda] = lerBase( path )
%READBASE 
% Funcao feita para ler a base Iris.
% Recebe o caminho do arquivo contendo a base.
% Devolve a matriz com os dados da base junto com um array, chamado de legenda, indicando a
% classe que cada exemplo pertence.
%
    fileID = fopen(path,'r');
    iris = fscanf(fileID,['%s'], [Inf]);
    fclose(fileID); 
    temp = strsplit(iris, 'Iris-setosa');
    
    matriz = [];
    legenda = [];
    for i = 1 : length(temp)  
        if i == length(temp)
            temp = temp(i);
        else
            linha = char(temp(i));
            linha = strsplit(linha, ',');
            linha(length(linha)) = []; 
            legenda = [legenda ; cellstr('Iris-setosa')];
            matriz = [matriz ; linha ];
        end    
    end   
    
    temp = char(temp);
    temp = strsplit(temp, 'Iris-versicolor');
    
    for i = 1 : length(temp)
    
        if i == length(temp)
            temp = temp(i);
        else
            linha = char(temp(i));
            linha = strsplit(linha, ',');
            linha(length(linha)) = []; 
            legenda = [legenda ; cellstr('Iris-versicolor')];
        
            matriz = [matriz ; linha ];
        end    
               
    end 
    
    temp = char(temp);
    temp = strsplit(temp, 'Iris-virginica');
    
    for i = 1 : length(temp)
    
        if i == length(temp)
            temp = temp(i);
        else
            linha = char(temp(i));
            linha = strsplit(linha, ',');
            linha(length(linha)) = []; 
            legenda = [legenda ; cellstr('Iris-virginica')];
        
            matriz = [matriz ; linha ];
        end    
               
    end 
    
    matriz = str2double(matriz);
    
end

