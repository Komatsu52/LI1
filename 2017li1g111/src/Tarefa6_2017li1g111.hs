{-|
Module      : Tarefa6_2017li1g111
Description : Módulo da Tarefa 6 para LI1 17/18

Módulo para a realização da Tarefa 6 de LI1 em 2017/18.
-}
module Tarefa6_2017li1g111 where

import LI11718
import Tarefa1_2017li1g111
import Tarefa2_2017li1g111
import Tarefa3_2017li1g111
import Tarefa4_2017li1g111

{-|
Função usada para simular um /bot/ no jogo /Micro Machines/.
Em cada instante, dado o tempo decorrido, o estado do jogo
e o identificador do jogador, toma uma ação.
-}
bot :: Tempo  -- ^ tempo decorrido desde a última decisão
    -> Jogo   -- ^ estado atual do jogo
    -> Int    -- ^ identificador do jogador dentro do estado
    -> Acao   -- ^ a decisão tomada pelo /bot/
bot t j i = lNitro i 0 (convertePeca (convertePos (cars j)) (tab j)) (detAcao (transformaDir (buscaCarro (cars j) i)) (pegaPar (pPos (cars j) i) (detPos (posInit j) (todasPecas j) [])) (Acao False False False False Nothing))


-- | Dado um jogo, devolve-nos a lista de carros desse jogo

cars :: Jogo -> [Carro]
cars (Jogo m pr c n h) = c


-- | Dado um jogo, devolve-nos o tabuleiro desse jogo

tab :: Jogo -> Tabuleiro
tab (Jogo (Mapa a t) pr c n h) = t



-- | Dada uma lista de carros, vai nos retribuir a posicao da peca em que um dado carro esta

pPos :: [Carro] -> Int -> Posicao
pPos (c:cs) i = if i==0 then (pPos2 c)
	            else (pPos cs (i-1))



-- | Dado um carro, da nos a posicao da peca em que esta

pPos2 :: Carro -> Posicao
pPos2 (Carro (a,b) d v) = ((floor a),(floor b))



-- | Dado um jogo, a funcao retribui-nos uma lista com pares que possuem as pecas do percurso ordenadas e a sua respetiva orientacao

todasPecas :: Jogo -> [(Peca,Orientacao)]
todasPecas (Jogo m p c n h) = defLPeca m



-- | Dado um mapa, a funcao retribui-nos uma lista com pares que possuem as pecas do percurso ordenadas e a sua respetiva orientacao

defLPeca :: Mapa -> [(Peca,Orientacao)]
defLPeca (Mapa ((x,y),o) (z:zs)) = pecasOrientadas ((pegaPeca (x,y) (z:zs)),o) (x,y) (z:zs)



-- | Dada a posicao da primeira peca de uma lista de pecas e posicoes e a respetiva lista, devolve uma lista que mantem a informacao da original, sendo que acrescenta tambem a posicao da peca

detPos :: Posicao -> [(Peca,Orientacao)] -> [(Peca,Orientacao,Posicao)] -> [(Peca,Orientacao,Posicao)]
detPos p [] a = a
detPos (x,y) (((Peca Recta z),o):ps) a | o == Este  = detPos ((x+1),y) ps (a++[((Peca Recta z),o,(x,y))])
                                       | o == Oeste = detPos ((x-1),y) ps (a++[((Peca Recta z),o,(x,y))])
                                       | o == Norte = detPos (x,(y-1)) ps (a++[((Peca Recta z),o,(x,y))])
                                       | o == Sul   = detPos (x,(y+1)) ps (a++[((Peca Recta z),o,(x,y))])

detPos (x,y) (((Peca (Rampa p) z),o):ps) a | o == Este  = detPos ((x+1),y) ps (a++[((Peca (Rampa p) z),o,(x,y))])
                                           | o == Oeste = detPos ((x-1),y) ps (a++[((Peca (Rampa p) z),o,(x,y))])
                                           | o == Norte = detPos (x,(y-1)) ps (a++[((Peca (Rampa p) z),o,(x,y))])
                                           | o == Sul   = detPos (x,(y+1)) ps (a++[((Peca (Rampa p) z),o,(x,y))])

detPos (x,y) (((Peca (Curva p) z),o):ps) a | p == Este  && o == Este  = detPos (x,(y+1)) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Este  && o == Norte = detPos ((x-1),y) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Oeste && o == Oeste = detPos (x,(y-1)) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Oeste && o == Sul   = detPos ((x+1),y) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Norte && o == Norte = detPos ((x+1),y) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Norte && o == Oeste = detPos (x,(y+1)) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Sul   && o == Sul   = detPos ((x-1),y) ps (a++[((Peca (Curva p) z),o,(x,y))])
                                           | p == Sul   && o == Este  = detPos (x,(y-1)) ps (a++[((Peca (Curva p) z),o,(x,y))])



-- | Dado um jogo, determina a posicao inicial 

posInit :: Jogo -> Posicao
posInit (Jogo (Mapa (a,b) t) p c n h) = a



-- | Dada uma posicao, e uma lista com pecas e as suas orientacoes e posicoes respetivas, vai me determinar um par que possui a peca atual e a orientacao

pegaPar :: Posicao -> [(Peca,Orientacao,Posicao)] -> (Peca,Orientacao)
pegaPar p [] = ((Peca Recta 0),Este)
pegaPar (x,y) ((p,o,(a,b)):ps) | x == a && y == b = (p,o)
                               | otherwise = pegaPar (x,y) ps



-- | Dado um carro e a peca em que esta, determina a melhor acao a tomar

detAcao :: Carro -> (Peca,Orientacao) -> Acao -> Acao
detAcao (Carro (a,b) d (x,y)) ((Peca Recta _),o) (Acao q w e r t) | o == Este   &&  (round d)==0                     = Acao True w e r t
                                                                  | o == Este   &&  0<(round d)    && (round d)<=180 = Acao q w e True t
                                                                  | o == Este   &&  180<(round d)  && (round d)<360  = Acao q w True r t
                                                                  | o == Oeste  &&  (round d)==180                   = Acao True w e r t
                                                                  | o == Oeste  &&  180<(round d)  && (round d)<=360 = Acao q w e True t
                                                                  | o == Oeste  &&  0<=(round d)   && (round d)<180  = Acao q w True r t
                                                                  | o == Norte  &&  (round d)==90                    = Acao True w e r t
                                                                  | o == Norte  &&  90<(round d)   && (round d)<=270 = Acao q w e True t
                                                                  | o == Norte  &&  (round d)<90                     = Acao q w True r t
                                                                  | o == Norte  &&  270<(round d)  && (round d)<=360 = Acao q w True r t
                                                                  | o == Sul    &&  (round d)==270                   = Acao True w e r t
                                                                  | o == Sul    &&  270<(round d)  && (round d)<=360 = Acao q w e True t
                                                                  | o == Sul    &&  0<=(round d)   && (round d)<90   = Acao q w e True t
                                                                  | o == Sul    &&  270<(round d)  && (round d)<=360 = Acao q w True r t

detAcao (Carro (a,b) d (x,y)) ((Peca (Rampa _) _),o) (Acao q w e r t) | o == Este  &&  (round d)==0   = Acao True w e r t
                                                                      | o == Este  &&  0<(round d)    && (round d)<=180 = Acao q w e True t
                                                                      | o == Este  &&  180<(round d)  && (round d)<360  = Acao q w True r t
                                                                      | o == Oeste &&  (round d)==180                   = Acao True w e r t
                                                                      | o == Oeste &&  180<(round d)  && (round d)<=360 = Acao q w e True t
                                                                      | o == Oeste &&  0<=(round d)   && (round d)<180  = Acao q w True r t
                                                                      | o == Norte &&  (round d)==90                    = Acao True w e r t
                                                                      | o == Norte &&  90<(round d)   && (round d)<=270 = Acao q w e True t
                                                                      | o == Norte &&  (round d)<90                     = Acao q w True r t
                                                                      | o == Norte &&  270<(round d)  && (round d)<=360 = Acao q w True r t
                                                                      | o == Sul   &&  (round d)==270                   = Acao True w e r t
                                                                      | o == Sul   &&  270<(round d)  && (round d)<=360 = Acao q w e True t
                                                                      | o == Sul   &&  0<=(round d)   && (round d)<90   = Acao q w e True t
                                                                      | o == Sul   &&  270<(round d)  && (round d)<=360 = Acao q w True r t

detAcao (Carro (a,b) d (x,y)) ((Peca (Curva Este) _),o) (Acao q w e r t) | o == Este  &&  (round d)==270                   = Acao True w e r t
                                                                         | o == Este  &&  270<(round d)  && (round d)<=360 = Acao q True e True t
                                                                         | o == Este  &&  0<=(round d)   && (round d)<90   = Acao q True e True t
                                                                         | o == Este  &&  270<(round d)  && (round d)<=360 = Acao q True True r t
                                                                         | o == Norte &&  (round d)==180                   = Acao True w e r t
                                                                         | o == Norte &&  180<(round d)  && (round d)<=360 = Acao q True e True t
                                                                         | o == Norte &&  0<=(round d)   && (round d)<180  = Acao q True True r t

detAcao (Carro (a,b) d (x,y)) ((Peca (Curva Norte) _),o) (Acao q w e r t) | o == Norte &&  (round d)==0                      = Acao True w e r t
                                                                          | o == Norte &&  0<(round d)     && (round d)<=180 = Acao q True e True t
                                                                          | o == Norte &&  180<(round d)   && (round d)<360  = Acao q True True r t
                                                                          | o == Oeste &&  (round d)==270                    = Acao True w e r t
                                                                          | o == Oeste &&  270 < (round d) && (round d)<=360 = Acao q True e True t
                                                                          | o == Oeste &&  0<= (round d)   && (round d)<90   = Acao q True e True t
                                                                          | o == Oeste &&  270 < (round d) && (round d)<=360 = Acao q True True r t

detAcao (Carro (a,b) d (x,y)) ((Peca (Curva Oeste) _),o) (Acao q w e r t) | o == Oeste &&  (round d)==90                   = Acao True w e r t
                                                                          | o == Oeste &&  90<(round d)  && (round d)<=270 = Acao q True e True t
                                                                          | o == Oeste &&  (round d)<90                    = Acao q True True r t
                                                                          | o == Oeste &&  270<(round d) && (round d)<=360 = Acao q True True r t
                                                                          | o == Sul   &&  (round d)==0                    = Acao True w e r t
                                                                          | o == Sul   &&  0<(round d)   && (round d)<=180 = Acao q True e True t
                                                                          | o == Sul   &&  180<(round d) && (round d)<360  = Acao q True True r t

detAcao (Carro (a,b) d (x,y)) ((Peca (Curva Sul) _),o) (Acao q w e r t) | o == Sul   &&  (round d)==180                  = Acao True w e r t
                                                                        | o == Sul   &&  180<(round d) && (round d)<=360 = Acao q True e True t
                                                                        | o == Sul   &&  0<=(round d)  && (round d)<180  = Acao q True True r t
                                                                        | o == Este  &&  (round d)==90                   = Acao True w e r t
                                                                        | o == Este  &&  90<(round d)  && (round d)<=270 = Acao q True e True t
                                                                        | o == Este  &&  (round d)<90                    = Acao q True True r t
                                                                        | o == Este  &&  270<(round d) && (round d)<=360 = Acao q True True r t



-- | Dado um carro, transforma a direcao desse carro num angulo positivo (caso nao seja)

transformaDir :: Carro -> Carro
transformaDir (Carro a d v) = if d<0 then (transformaDir (Carro a (d+360) v))
	                          else (Carro a d v)



-- | Dada uma lista de carros, devolve-nos uma lista com as posicoes de cada um

convertePos :: [Carro] -> [Posicao]
convertePos [] = []
convertePos (c:cs) = (pPos2 c):(convertePos cs)



-- | Dada uma lista de posicoes e um tabuleiro, devolve-nos uma lista com as pecas que estao na respetiva posicao

convertePeca :: [Posicao] -> Tabuleiro -> [Peca]
convertePeca [] t = []
convertePeca (p:ps) t = (pegaPeca p t):(convertePeca ps t)



-- | Verifica se ha algum carro, que nao o proprio, numa curva e, se sim, liga o nitro para esse carro

lNitro :: Int -> Int -> [Peca] -> Acao -> Acao
lNitro i j [] a = a
lNitro i j ((Peca (Curva o) _):ps) (Acao a b c d e) = if i==j then (lNitro i (j+1) ps (Acao a b c d e))
	                                                  else (Acao a b c d (Just j))
lNitro i j (p:ps) a = lNitro i (j+1) ps a

