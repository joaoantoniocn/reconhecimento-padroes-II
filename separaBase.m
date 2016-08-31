function [ treino, legendaTreino, teste, legendaTeste ] = separaBase( base, legenda,  quantidadeTeste, indiceFolder, classes)
%SEPARABASE recebe a base completa junto com sua legenda, separa a base em
% treino e teste.
% quantidadeTeste = quantos exemplos vão ser separados para teste
% indiceFolder = qual o folder a ser separado
% classes = array com o nome de todas as classes
%
% IMPORTANTE:
% quantidadeTeste * indiceFolder não pode ultrapassar o tamanho da base.
%
% Utilizar 'quantidadeTeste' exemplos de cada classe como a base de teste e
% os outros exemplos como conjunto de treino.

treino = [];
legendaTreino = [];
teste = [];
legendaTeste = [];

% Um array de tamanho igual ao número de classes da base onde cada posição
% indica o número de exemplos visto daquela classe. Usado para extrair
% exemplos em um determinado intervalo dentro de uma classe. 
indices = ones(1,length(classes)); 


for i = 1 : length(base)
    
    % verifica se o i-esimo exemplo foi atribuido a base de teste
    % 0 = false; 1 = true
    isTeste = 0;
    
    % passa por todas as classes
    for j = 1 : length(classes)
        
        % verifica se o exemplo i pertence a classe j
        if (strcmp(legenda(i), classes(j)) == 1) 
            
            % verificando se está entre o intervalo esperado daquele folder
            if (indices(j) > (quantidadeTeste*indiceFolder) - quantidadeTeste) & (indices(j) <= quantidadeTeste*indiceFolder)
                teste = [teste ; base(i, :)];
                legendaTeste = [legendaTeste ; legenda(i)];
                isTeste = 1;
            end
            
            indices(j) = indices(j) + 1;          
        end
    end
    
    % se o exemplo i nao foi atribuido a base de teste, ele sera atribuido
    % como treino.
    if isTeste == 0
        treino = [treino ; base(i, :)];
        legendaTreino = [legendaTreino ; legenda(i)];
    end    
end

end

