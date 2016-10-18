function [ treino, legendaTreino, teste, legendaTeste ] = separaBaseAleatorio( base, legenda, indicePrimeiraClasse)
%SEPARABASE recebe a base completa junto com sua legenda, separa a base em
% treino e teste.
% indicePrimeiraClasse = até que indice vai a primeira classe
%


treino = [];
legendaTreino = [];
teste = [];
legendaTeste = [];

rng('shuffle');
indicesTreino1 = randperm(indicePrimeiraClasse,(indicePrimeiraClasse/2));
indicesTreino2 = randperm((length(base) - indicePrimeiraClasse),((length(base) - indicePrimeiraClasse)/2));

baseClasse1 = base(1:indicePrimeiraClasse, :);
legendaClasse1 = legenda(1:indicePrimeiraClasse, :);

baseClasse2 = base((indicePrimeiraClasse+1):length(base), :);
legendaClasse2 = legenda((indicePrimeiraClasse+1):length(legenda), :);

for i = 1 : length(indicesTreino1)
    
    if((find(indicesTreino1 == i) < length(indicesTreino1)) == 1)  
        treino = [treino; baseClasse1(i, :)];
        legendaTreino = [legendaTreino; legendaClasse1(i)];     
    else
        teste = [teste; baseClasse1(i, :)];
        legendaTeste = [legendaTeste; legendaClasse1(i)];    
    end
     
end

for i = 1 : length(indicesTreino2)
    
    if((find(indicesTreino2 == i) < length(indicesTreino2)) == 1)  
        treino = [treino; baseClasse2(i, :)];
        legendaTreino = [legendaTreino; legendaClasse2(i)];     
    else
        teste = [teste; baseClasse2(i, :)];
        legendaTeste = [legendaTeste; legendaClasse2(i)];    
    end
     
end

end

