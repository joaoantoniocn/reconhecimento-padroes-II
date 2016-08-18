function [ treino, legendaTreino, teste, legendaTeste ] = separaBase( base, legenda )
%SEPARABASE recebe a base completa junto com sua legenda, separa a base em
% treino e teste.
% Utilizar os 10 primeiros exemplos de cada classe como a base de teste (30 exemplos de teste) e
% os outros 120 exemplos como conjunto de treino.
    
    treino = [];
    legendaTreino = [];
    teste = [];
    legendaTeste = [];

    indiceSetosa = 1;
    indiceVersicolor = 1;
    indiceVirginica = 1;
    
    for i = 1 : length(base)
        
        if (strcmp(legenda(i),'Iris-setosa') == 1) & (indiceSetosa <= 10)           
            teste = [teste ; base(i, :)];
            legendaTeste = [legendaTeste ; legenda(i)];
            indiceSetosa = indiceSetosa + 1;            
        elseif (strcmp(legenda(i),'Iris-versicolor') == 1) & (indiceVersicolor <= 10)           
            teste = [teste ; base(i, :)];
            legendaTeste = [legendaTeste ; legenda(i)];
            indiceVersicolor = indiceVersicolor + 1;
        elseif (strcmp(legenda(i),'Iris-virginica') == 1) & (indiceVirginica <= 10)           
            teste = [teste ; base(i, :)];
            legendaTeste = [legendaTeste ; legenda(i)];
            indiceVirginica = indiceVirginica + 1;
        else
            treino = [treino ; base(i, :)];
            legendaTreino = [legendaTreino ; legenda(i)];
        end    
        
    end    

end

