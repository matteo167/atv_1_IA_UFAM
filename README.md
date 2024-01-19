# atv_1_IA_UFAM
Atividade 1 da disciplina de IA da UFAM para o professor Edjar 

Feito por Matteo Freitas Reis e Girlana Sousa dos Santos


Objetivo do Código:
O código em Prolog implementa um sistema simples para verificar a vacância de blocos em uma mesa, calcular o centro de massa de cada bloco e determinar a estabilidade de um bloco sobre outro.



Regras Implementadas:

Verifica se há espaço horizontal disponível para um bloco de tamanho especificado na posição (X, Y).

Verifica se há espaço vertical disponível para um bloco de tamanho especificado na posição (X, Y).

Calcula o centro de massa de um bloco com base em seu tamanho e posição na mesa.


Determina se um bloco superior está estável sobre um bloco inferior. A estabilidade é verificada comparando os centros de massa dos dois blocos. A condição de estabilidade considera possíveis deslocamentos horizontais de 0, 0.5, -0.5, 1 e -1 unidades, pois para o caso de blocos com até 3 de largura, essa configuração abrange todos os casos possíveis de estabilidade e instabilidade.

Uso do Código:
Para usar as regras e consultas, defina os blocos e suas posições na mesa.

	Regras:

	vazio_horizontal(X, Y, TamanhoX)
		verifica se existe um espaço sem blocos de tamanhoX na horizontal começando nas coordenadas (X,Y)

	vazio_vertical(X, Y, TamanhoY)
		verifica se existe um espaço sem blocos de tamanhoY na vertical começando nas coordenadas (X,Y)

	centro_massa(Bloco, CentroX, CentroY)
		verifica se (CentroX, CentroY) são as coordenadas do centro de massa Bloco

	estabilidade(BlocoSuperior, BlocoInferior)
		verifica se o BlocoSuperior está estável em cima do BlocoInferior 

	imprimir_centros_massa
		Imprime os centros de massa te todos os blocos

se utilizar os comandos abaixo no codigo q1_estaveis.pl cujos blocos representam configurações estáveis (mostradas no pdf), será retornado true.
 
estabilidade(b,a).
estabilidade(d,c).
estabilidade(f,e).
estabilidade(h,g).


se utilizar os comandos abaixo no codigo q1_nao_estaveis.pl cujos blocos representam configurações nao estáveis (mostradas no pdf), será retornado false.

estabilidade(b,a).
estabilidade(d,c).
