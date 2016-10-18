function [ vetoresOrdenados, valoresOrdenados ] = ordenarScore( autovetores, score )
%ORDENAR ordena os autovetores em relacao ao score
%   ?1 ? ?2 ? . . . ?d; onde ? é um autovalor
   
    for i = 1 : length(score)
        for j = i : length(score)
          if score(i) < score(j)
             tempValores =  score(i);
             tempVetores =  autovetores(:, i);
             
             score(i) = score(j);
             autovetores(:, i) = autovetores(:, j);
             
             score(j) = tempValores;
             autovetores(:, j) = tempVetores;
          end    
        end    
    end    
    
    vetoresOrdenados = autovetores;
    valoresOrdenados = score;

end

