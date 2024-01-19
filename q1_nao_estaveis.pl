% Definição dos blocos e suas características
bloco(a, 1, 0). % Bloco a, tamanho 1x1
bloco(b, 3, 1). % Bloco b, tamanho 3x1
bloco(c, 2, 0). % Bloco c, tamanho 2x1
bloco(d, 3, 1). % Bloco d, tamanho 3x1


% Definição da posição dos blocos na mesa
% posição_bloco(NomeBloco, PosiçãoX, PosiçãoY)
posicao_bloco(a, 0, 0).
posicao_bloco(b, 0, 1).
posicao_bloco(c, 4, 0).
posicao_bloco(d, 5, 1).


% Regras para verificar vacância horizontal
vazio_horizontal(X, Y, TamanhoX) :-
    \+ (posicao_bloco(_, PX, PY), PX >= X, PX =< X + TamanhoX - 1, PY = Y).

% Regras para verificar vacância vertical
vazio_vertical(X, Y, TamanhoY) :-
    \+ (posicao_bloco(_, PX, PY), PX = X, PY >= Y, PY =< Y + TamanhoY - 1).

% Regra para verificar o centro de massa de um bloco
centro_massa(Bloco, CentroX, CentroY) :-
    bloco(Bloco, TamanhoX, TamanhoY),
    posicao_bloco(Bloco, PosicaoX, PosicaoY),
    CentroX is (PosicaoX + TamanhoX) / 2,
    CentroY is (PosicaoY + TamanhoY) / 2.

% Regra para verificar a estabilidade de um bloco sobre outro
estabilidade(BlocoSuperior, BlocoInferior) :-
    centro_massa(BlocoSuperior, CentroXSuperior, CentroYSuperior),
    centro_massa(BlocoInferior, CentroXInferior, CentroYInferior),
    (
        (CentroXSuperior =:= CentroXInferior;
         CentroXSuperior =:= CentroXInferior + 0.5;
         CentroXSuperior =:= CentroXInferior - 0.5;
         CentroXSuperior =:= CentroXInferior + 1;
         CentroXSuperior =:= CentroXInferior - 1),
        CentroYSuperior =:= CentroYInferior + 1
    ).




imprimir_centros_massa :-
    bloco(Bloco, _, _),
    centro_massa(Bloco, CentroX, CentroY),
    format('Centro de massa de ~w: (~w, ~w)~n', [Bloco, CentroX, CentroY]),
    fail.
imprimir_centros_massa. 

