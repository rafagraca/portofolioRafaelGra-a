
% Gera instancias para um problema do caminho mais curto
%      -com grafos completos
%      - n vértices
%      -e dois tipos de custos
%   
% 
% o ficheiro é gerado no formato *.MAT e é compativel com o
% LerDados.m


% Começa por transmitir ao utilizador informações acerca do que lhe vai ser pedido

disp('Este procedimento gera instancias para o problema do caminho mais curto com dois tipos de custo.');
prompt = 'Quantas instancias pretende gerar? ';
numFicheiros = input(prompt);


if numFicheiros == 0 
    fprintf('Atencao: o número de instancias a gerar deve ser um inteiro positivo.');
    return             
end


for f=1:numFicheiros
    fprintf('A gerar a instancia %i.\n', f);
    prompt = 'Introduza o número total de vertices? ';
    n = input(prompt);
    
   
    
    fnameo=['Inst', int2str(f),'.MAT'];
      
   
   % Gerar Custos Matriz 1:      
   for i =1:n
      for j=1:n
	if j==i
        c1(i,j)=0;
	else
        c1(i,j)=randi([1,16]); % O limite superior da funcao randi deve ser ajustada a dimensao da matriz
	end  
      end
   end
   
% Gerar Custos Matriz 2:      
   for i =1:n
      for j=1:n
	if j==i
	   c2(i,j)=0;
	else
       c2(i,j)=1; % a segunda funcao de custo refere o numero de hops
	end  
      end
   end
  
      Dados=vertcat(c1,c2);
      save(fnameo, 'Dados');

end




