--Este trabalho foi realizado por Gonçalo Esteves, a85731, e Duarte Morais, a83711, no âmbito da UC de Laboratórios de Informática

module Tarefa1_2017li1g111 where

import LI11718

testesT1 :: [Caminho]
testesT1 = [[Avanca,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,Avanca,CurvaDir,Avanca,CurvaDir],
            [Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq], 
            [Avanca,Sobe,CurvaDir,Avanca,Avanca,CurvaEsq,Desce,Avanca,CurvaEsq,Avanca,Avanca,CurvaEsq,CurvaDir,CurvaEsq,Avanca,Sobe,Avanca,Avanca,Desce,CurvaEsq,CurvaEsq,Avanca], 
            [CurvaDir,Sobe,Avanca,CurvaEsq,Avanca,Avanca,CurvaEsq,Avanca,Desce,Avanca,CurvaEsq,Avanca,CurvaDir,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaDir,Avanca,CurvaEsq,CurvaEsq,Avanca,Avanca],
            [Avanca,Avanca,Sobe,Avanca,CurvaEsq,Avanca,CurvaDir,Avanca,CurvaDir,Desce,Desce,CurvaEsq,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,Avanca,CurvaDir,CurvaEsq,Sobe,Avanca,CurvaEsq,Avanca,CurvaDir,Avanca,Sobe,CurvaDir,Avanca,Desce,Avanca,CurvaDir],
            [CurvaDir,Avanca,CurvaEsq,Sobe,Avanca,CurvaEsq,CurvaDir,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaDir,CurvaDir,Avanca,Avanca,CurvaDir,Avanca,Avanca,Avanca,Avanca,CurvaDir,Desce,Avanca,Avanca,Avanca,Avanca,CurvaDir,Avanca,Avanca,CurvaDir],
            [Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,CurvaEsq,CurvaDir,Sobe,CurvaDir,Avanca,CurvaDir,CurvaEsq,CurvaDir,Avanca,Avanca,Desce,Avanca,CurvaDir,Avanca,CurvaEsq,Sobe,
             CurvaDir,Avanca,Sobe,CurvaDir,Avanca,CurvaEsq,Avanca,CurvaDir,Desce,Desce,Avanca,CurvaDir,Avanca,Avanca,CurvaDir],
            [CurvaEsq,Sobe,Avanca,CurvaDir,CurvaDir,Avanca,Desce,Desce,Sobe,CurvaEsq],
            [Sobe,Avanca,CurvaDir,Avanca,Desce,CurvaDir,Avanca,Avanca,Avanca,CurvaDir,Avanca,Sobe,CurvaDir],
            [Avanca,Avanca,CurvaDir,Avanca,CurvaEsq,Avanca,CurvaEsq,Sobe,CurvaDir,Avanca,CurvaDir,Avanca,Desce,Desce,CurvaDir,Desce,CurvaEsq,Sobe,CurvaDir,Avanca,Avanca,CurvaDir,Avanca,CurvaEsq,Avanca,CurvaEsq,Sobe,CurvaDir,Sobe,CurvaDir,Avanca,Avanca,CurvaDir,Desce,CurvaEsq,Avanca,Avanca,CurvaDir],
            [CurvaEsq,Avanca,Sobe,CurvaDir,Avanca,Sobe,CurvaDir,Desce],
            [CurvaDir,Sobe,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,Avanca,CurvaDir,Desce]]



-- | Constroi o caminho

constroi :: Caminho -> Mapa
constroi c = Mapa ((partida c),dirInit) (substituiTodas (constroiLava (dimensao c)) (posicoes c) (pecasFinais dirInit c altInit))



-- | Determina a proxima orientacao quando se faz uma curva a direita, para uma dada orientacao inicial

rodaDir :: Orientacao -> Orientacao
rodaDir Norte = Este
rodaDir Este  = Sul
rodaDir Sul   = Oeste
rodaDir Oeste = Norte 



-- | Determina a proxima orientacao quando se faz uma curva a esquerda, para uma dada orientacao inicial

rodaEsq :: Orientacao -> Orientacao 
rodaEsq Norte = Oeste
rodaEsq Oeste = Sul
rodaEsq Sul   = Este
rodaEsq Este  = Norte



-- | Cria uma linha de pecas de lava

lavaLinha :: Int -> [Peca]
lavaLinha x | x==0      = []
            | otherwise = (Peca Lava altLava): lavaLinha (x-1)



-- | Constroi um tabuleiro so com pecas de lava, dada uma determinada dimensao

constroiLava :: Dimensao -> Tabuleiro
constroiLava (0,0) = []
constroiLava (x,y) | y==0      = []
	                 | otherwise = (lavaLinha x): constroiLava (x,(y-1))



-- | Dada uma orientacao e um passo que se pretende efetuar, a funcao da nos a peca necessaria para realizar a acao

peca :: Orientacao -> Passo -> Altura -> Peca
peca x Avanca y   = Peca Recta y
peca x CurvaEsq y | x==Norte = Peca (Curva Este)  y
                  | x==Sul   = Peca (Curva Oeste) y
                  | x==Este  = Peca (Curva Sul)   y
                  | x==Oeste = Peca (Curva Norte) y
peca x CurvaDir y = Peca (Curva x) y
peca x Sobe y     = Peca (Rampa x) y
peca x Desce y    | x==Norte = Peca (Rampa Sul)   (y-1)
                  | x==Sul   = Peca (Rampa Norte) (y-1)
                  | x==Este  = Peca (Rampa Oeste) (y-1)
                  | x==Oeste = Peca (Rampa Este)  (y-1)



-- | Substitui uma peca, num dado tabuleiro, por outra peca dada

substitui :: Tabuleiro -> Posicao -> Peca -> Tabuleiro 
substitui [] a b         = []
substitui (x:xs) (a,b) y | b>0  && a>=0 = x:(substitui (xs) (a,(b-1)) y)
                         | b==0 && a>=0 = (substituiLinha x a y):xs



-- | Substitui uma peca, numa dada linha, por outra peca dada

substituiLinha :: [Peca] -> Int -> Peca -> [Peca]
substituiLinha [] a b     = []
substituiLinha (x:xs) a y | a==0      = (y:xs)
                          | otherwise = x:(substituiLinha xs (a-1) y)



-- | Dado um caminho, calcula uma uma lista de posicoes correspondente, onde os passos do caminho deverao estar

posicoes :: Caminho -> [Posicao]
posicoes [] = []
posicoes c  =  posicoesAux c (partida c) Este



-- | Dado um caminho, uma posicao inicial e uma orientacao inicial, da nos uma listas de posicoes onde os passos do caminho deverao estar

posicoesAux :: Caminho -> Posicao -> Orientacao -> [Posicao]
posicoesAux [] (x,y) a     = []
posicoesAux (a:as) (x,y) b | a==Avanca   && b==Este  = (x,y):(posicoesAux as ((x+1),y) Este)
                           | a==Sobe     && b==Este  = (x,y):(posicoesAux as ((x+1),y) Este)
                           | a==Desce    && b==Este  = (x,y):(posicoesAux as ((x+1),y) Este)
                           | a==CurvaDir && b==Este  = (x,y):(posicoesAux as (x,(y+1)) (rodaDir Este))
                           | a==CurvaEsq && b==Este  = (x,y):(posicoesAux as (x,(y-1)) (rodaEsq Este))
                           | a==Avanca   && b==Oeste = (x,y):(posicoesAux as ((x-1),y) Oeste)
                           | a==Sobe     && b==Oeste = (x,y):(posicoesAux as ((x-1),y) Oeste)
                           | a==Desce    && b==Oeste = (x,y):(posicoesAux as ((x-1),y) Oeste)
                           | a==CurvaDir && b==Oeste = (x,y):(posicoesAux as (x,(y-1)) (rodaDir Oeste))
                           | a==CurvaEsq && b==Oeste = (x,y):(posicoesAux as (x,(y+1)) (rodaEsq Oeste))
                           | a==Avanca   && b==Norte = (x,y):(posicoesAux as (x,(y-1)) Norte)
                           | a==Sobe     && b==Norte = (x,y):(posicoesAux as (x,(y-1)) Norte)
                           | a==Desce    && b==Norte = (x,y):(posicoesAux as (x,(y-1)) Norte)
                           | a==CurvaDir && b==Norte = (x,y):(posicoesAux as ((x+1),y) (rodaDir Norte))
                           | a==CurvaEsq && b==Norte = (x,y):(posicoesAux as ((x-1),y) (rodaEsq Norte))
                           | a==Avanca   && b==Sul   = (x,y):(posicoesAux as (x,(y+1)) Sul)
                           | a==Sobe     && b==Sul   = (x,y):(posicoesAux as (x,(y+1)) Sul)
                           | a==Desce    && b==Sul   = (x,y):(posicoesAux as (x,(y+1)) Sul)
                           | a==CurvaDir && b==Sul   = (x,y):(posicoesAux as ((x-1),y) (rodaDir Sul))
                           | a==CurvaEsq && b==Sul   = (x,y):(posicoesAux as ((x+1),y) (rodaEsq Sul))

 

-- | Dado um caminho, uma orientacao e uma altura inicial da nos a lista de pecas correspondente

pecasFinais :: Orientacao -> Caminho -> Altura -> [Peca]
pecasFinais y [] z = []
pecasFinais y (x:xs) z | x==Avanca   = (peca y Avanca z)  :(pecasFinais y xs z)
                       | x==Sobe     = (peca y Sobe z)    :(pecasFinais y xs (z+1))
                       | x==Desce    = (peca y Desce z)   :(pecasFinais y xs (z-1))
                       | x==CurvaEsq = (peca y CurvaEsq z):(pecasFinais (rodaEsq y) xs z)
                       | x==CurvaDir = (peca y CurvaDir z):(pecasFinais (rodaDir y) xs z)



-- | Dado um tabuleiro inicial, uma lista de posicoes e uma lista de pecas, da nos um abuleiro com todas as pecas da lista, nas posicoes correspondentes

substituiTodas :: Tabuleiro -> [Posicao] -> [Peca] -> Tabuleiro
substituiTodas [] a b = []
substituiTodas a [] b = a
substituiTodas a b [] = a
substituiTodas (x:xs) (y:ys) (z:zs) = substitui (substituiTodas (x:xs) ys zs) y z