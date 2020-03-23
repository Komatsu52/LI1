{-|
Module      : Tarefa4_2017li1g111
Description : Módulo da Tarefa 4 para LI1 17/18

Módulo para a realização da Tarefa 4 de LI1 em 2017/18.
-}
module Tarefa4_2017li1g111 where

import LI11718

import Tarefa1_2017li1g111

import Tarefa2_2017li1g111

import Tarefa3_2017li1g111

import Mapas


{-|
O testes a serem considerados pelo sistema de /feedback/
para a função 'atualiza'.
-}
testesT4 :: [(Tempo,Jogo,Acao)]
testesT4 = [(0.033, Jogo (buscaMapa mapas4 1)   gelo    [(Carro (3.3,2.5) 180 (-1,3)),(Carro (8.1,5.8) 200 (-2,0)),    (Carro (14.2,10.4) 75 (0.7,-2)),(Carro (2.6,5.1) 300 (-5,-1))]    [3.23,0.5,1.003,5.0]     [[],[],[],[]], Acao True  False False True  Nothing),
            (0.125, Jogo (buscaMapa mapas16 3)  terra   [(Carro (5.2,1.3) 318 (3,-5)),(Carro (3.6,9.3) 345 (3.5,1.4)), (Carro (5.7,10.4)  75 (0.7,-2)),(Carro (2.3,6.1) 45  (0,-6))]     [25.6,2.5,19.1,0.4]      [[],[],[],[]], Acao False True  True  False (Just 3)),
            (0.091, Jogo (buscaMapa mapas64 5)  terra   [(Carro (6.1,0.9) 231 (-7,0)),(Carro (7.6,7.1) 56  (0,7.2)),   (Carro (1.8,1.3)   75 (0.7,-2)),(Carro (7.2,7.3) 64  (-6.2,5.3))] [34.3,54.234,2.34,4.432] [[],[],[],[]], Acao True  True  False True  (Just 4)),
            (0.011, Jogo (buscaMapa mapas128 2) gelo    [(Carro (7.4,6.9) 76  (7,-4)),(Carro (1.6,9.5) 274 (6.2,-1.4)),(Carro (4.2,4.9)   75 (0.7,-2)),(Carro (6.1,1.3) 243 (3.6,7.1))]  [32.33,10.5,10.03,9.7]   [[],[],[],[]], Acao True  False True  True  Nothing),
            (0.250, Jogo (buscaMapa mapas4 3)   asfalto [(Carro (1.0,2.4) 9   (6,2)), (Carro (4.1,6.3) 84  (-3.1,3.6)),(Carro (9.5,7.4)   75 (0.7,-2)),(Carro (7.3,7.3) 52  (1.4,-4.1))] [3.4,53.3,0.0,33.2456]   [[],[],[],[]], Acao False True  True  False (Just 1))]

{-|
Função usada para atualizar o estado do jogo dadas as
ações de um jogador num determinado período de tempo.
-}
atualiza :: Tempo -- ^ a duração da ação
         -> Jogo  -- ^ o estado do jogo
         -> Int   -- ^ o identificador do jogador
         -> Acao  -- ^ a ação tomada pelo jogador
         -> Jogo  -- ^ o estado atualizado do jogo
atualiza t e j a = vamosPeso p t (vamosLigarNitro t (vamosVirarDir t (vamosVirarEsq t (vamosTravar t (vamosAcelerar t (vamosCons t e j) j a) j a) j a) j a) j a) j 
         
                   where p = verRampa e j



-- | Seleciona a peca em que esta um dado carro

verRampa :: Jogo -> Int -> Peca
verRampa (Jogo (Mapa a t) p c n h) x = sacarPeca t (buscaCarro c x)



-- | Seleciona um dado carro

buscaCarro :: [Carro] -> Int -> Carro
buscaCarro (x:xs) y = if y==0 then x 
	                  else buscaCarro xs (y-1)



-- | Soma dois vetores cartesianos

somaVetores :: (Double,Double) -> (Double,Double) -> (Double,Double)
somaVetores (x,y) (a,b) = ((x+a),(y+b))



-- | Dada uma lista de mapas, pega no mapa escolhido

buscaMapa :: [Mapa] -> Int -> Mapa
buscaMapa (x:xs) y = if y==1 then x
	                 else buscaMapa xs (y-1)



----------------------------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro quando esta a acelerar

vamosAcelerar :: Tempo -> Jogo -> Int -> Acao -> Jogo
vamosAcelerar t j i a | (acelera a) == True && (trava a) == False = acelVel t j i
	                  | otherwise                                 = j 



-- | Verifica se o carro esta a acelerar

acelera :: Acao -> Bool
acelera (Acao a t d e n) = a 



-- | Atualiza a lista de carros, uma vez que um deles esta a acelerar

acelVel	:: Tempo -> Jogo -> Int -> Jogo
acelVel t (Jogo m p c n h) i = Jogo m p (velAcel t p c i) n h   



-- | Seleciona o carro que esta a acelerar

velAcel :: Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
velAcel t p (x:xs) a = if a==0 then (velAcelFinal t p x):xs
                       else x:(velAcel t p xs (a-1))



-- | Altera o vetor velocidade de um carro quando este esta a acelerar

velAcelFinal :: Tempo -> Propriedades -> Carro -> Carro
velAcelFinal t pr (Carro p d v) = Carro p d (alteraVelAcel t pr (transformaAng d) v)



-- | Altera o modulo do vetor velocidade de um carro que esta a acelerar

alteraVelAcel :: Tempo -> Propriedades -> Double -> Velocidade -> Velocidade
alteraVelAcel t (Propriedades at pn ac pe ni ro) b (x,y) = somaVetores (toCartesiano ((ac*t),b)) (x,y)



-------------------------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro quando esta a travar

vamosTravar :: Tempo -> Jogo -> Int -> Acao -> Jogo
vamosTravar t j i a | (trava a) == True && (acelera a) == False = travaVel t j i
	                | otherwise                                 = j 



-- | Verifica se o carro esta a travar

trava :: Acao -> Bool
trava (Acao a t e d n) = t



-- | Atualiza a lista de carros, uma vez que um deles esta a travar

travaVel :: Tempo -> Jogo -> Int -> Jogo
travaVel t (Jogo m p c n h) i = Jogo m p (velTrava t p c i) n h    



-- | Seleciona o carro que esta a travar

velTrava :: Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
velTrava t p (x:xs) a = if a==0 then (velTravaFinal t p x):xs
                        else x:(velTrava t p xs (a-1))



-- | Altera o vetor velocidade de um carro quando este esta a travar

velTravaFinal :: Tempo -> Propriedades -> Carro -> Carro
velTravaFinal t pr (Carro p d v) = Carro p d (alteraVelTrava t pr (transformaAng d) v)



-- | Altera o modulo do vetor velocidade de um carro que esta a travar

alteraVelTrava :: Tempo -> Propriedades -> Double -> Velocidade -> Velocidade
alteraVelTrava t (Propriedades at pn ac pe ni ro) b (x,y) = somaVetores (toCartesiano ((ac*t),(pi+b))) (x,y)



---------------------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro quando tem o nitro ligado

vamosLigarNitro :: Tempo -> Jogo -> Int -> Acao -> Jogo
vamosLigarNitro t j i a | (ligaNitro a) == Nothing = j
	                    | otherwise                = nitroVel t j i (ligaNitro a) 



-- | Verifica se o nitro esta ligado em algum jogador 

ligaNitro :: Acao -> Maybe Int
ligaNitro (Acao a t e d n) = n 



-- | Dado um Maybe Int, devolve-me o Int correspondente

int :: Maybe Int -> Int
int (Just x) = x



-- | Atualiza a lista de carros, uma vez que um deles esta a ser influenciado por um nitro

nitroVel :: Tempo -> Jogo -> Int -> Maybe Int -> Jogo
nitroVel t (Jogo m p c n h) i (Just a) | (verNitro t n i) == 0 = Jogo m p c n h   
                                       | otherwise             = Jogo m p (velNitro (verNitro t n i) p c (Just a)) (alteraNitro t n i) h 



-- | Verifica a quantidade nitro disponivel num dado carro 

verNitro :: Tempo -> [Tempo] -> Int -> Tempo
verNitro t (x:xs) i = if i==0 then (valNitro t x)
	                  else verNitro t xs (i-1)



-- | Verifica qual a quantidade de nitro que pode ser gasto nesta acao

valNitro :: Tempo -> Tempo -> Tempo
valNitro a b | a>=b = b
             | a<b  = a



-- | Verifica qual o carro que tem o nitro ligado

alteraNitro :: Tempo -> [Tempo] -> Int -> [Tempo]
alteraNitro t (x:xs) i = if i==0 then (mudaNitro t x):xs
	                     else x:(alteraNitro t xs (i-1))



-- | Altera a quantidade de nitro disponivel num dado carro, depois de este o ter gasto

mudaNitro :: Tempo -> Tempo -> Tempo
mudaNitro a b | a>=b      = 0
              | otherwise = b-a



-- | Seleciona o carro que foi influenciado por um nitro

velNitro :: Tempo -> Propriedades -> [Carro] -> Maybe Int -> [Carro]
velNitro t p [] a = []
velNitro t p (x:xs) (Just a) = if a==0 then (velNitroFinal t p x):xs
                               else x:(velNitro t p xs (Just (a-1)))



-- | Altera o vetor velocidade de um carro quando este esta a ser influenciado por um nitro

velNitroFinal :: Tempo -> Propriedades -> Carro -> Carro
velNitroFinal t pr (Carro p d (x,y)) = Carro p d (alteraVelNitro t pr (transformaAng d) (x,y) (toPolar (x,y)))



-- | Altera o modulo do vetor velocidade de um carro que esta a ser influenciado por um nitro

alteraVelNitro :: Tempo -> Propriedades -> Double -> Velocidade -> Velocidade -> Velocidade
alteraVelNitro t (Propriedades at pn ac pe ni ro) b (x,y) (d,a) = somaVetores (toCartesiano ((ni*t),b)) (x,y)



-------------------------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro esta a virar a esquerda

vamosVirarEsq :: Tempo -> Jogo -> Int -> Acao -> Jogo
vamosVirarEsq t j i a | (viraEsq a) == True = mudaEsq t j i
	                  | otherwise           = j



-- | Verifica se o carro esta a virar a esquerda

viraEsq :: Acao -> Bool
viraEsq (Acao a t e d n) = e



-- | Atualiza a lista de carros, uma vez que um deles esta a virar a esquerda

mudaEsq :: Tempo -> Jogo -> Int -> Jogo
mudaEsq t (Jogo m p c n h) i = Jogo m p (rodaAEsq t p c i) n h



-- | Seleciona o carro que esta a virar a esquerda

rodaAEsq :: Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
rodaAEsq t p (x:xs) i = if i==0 then (rodaAEsq' t p x):xs
	                    else x:(rodaAEsq t p xs (i-1))



-- | Altera a direcao do carro, de modo a que este vire a esquerda

rodaAEsq' :: Tempo -> Propriedades -> Carro -> Carro
rodaAEsq' t pr (Carro p d v) = Carro p (alteraDireEsq t pr d) v



-- | Faz com que o carro vire a esquerda

alteraDireEsq :: Tempo -> Propriedades -> Angulo -> Angulo
alteraDireEsq t (Propriedades at pn ac pe ni ro)  a = (a+(ro*t))



---------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro esta a virar a direita

vamosVirarDir :: Tempo -> Jogo -> Int -> Acao -> Jogo
vamosVirarDir t j i a | (viraDir a) == True = mudaDir t j i
	                  | otherwise           = j



-- | Verifica se o carro esta a virar a direita

viraDir :: Acao -> Bool
viraDir (Acao a t e d n) = d



-- | Atualiza a lista de carros, uma vez que um deles esta a virar a esquerda

mudaDir :: Tempo -> Jogo -> Int -> Jogo
mudaDir t (Jogo m p c n h) i = Jogo m p (rodaADir t p c i) n h



-- | Seleciona o carro que esta a virar a direita 

rodaADir :: Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
rodaADir t p (x:xs) i = if i==0 then (rodaADir' t p x):xs
	                    else x:(rodaADir t p xs (i-1))



-- | Altera a direcao do carro, de modo a que este vire a direita

rodaADir' :: Tempo -> Propriedades -> Carro -> Carro
rodaADir' t pr (Carro p d v) = Carro p (alteraDireDir t pr d) v



-- | Faz com que o carro vire a direita

alteraDireDir :: Tempo -> Propriedades -> Angulo -> Angulo
alteraDireDir t (Propriedades at pn ac pe ni ro) a = (a-(ro*t))



----------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, quando um carro esta numa rampa
  
vamosPeso :: Peca -> Tempo -> Jogo -> Int -> Jogo
vamosPeso x t (Jogo m p c n h) i = Jogo m p (velPeso x t p c i) n h 



-- | Seleciona o carro que esta numa rampa

velPeso :: Peca -> Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
velPeso y t p (x:xs) a = if a==0 then (velPesoFinal y t p x):xs
                         else x:(velPeso y t p xs (a-1))



-- | Altera o vetor velocidade de um carro quando este numa rampa

velPesoFinal :: Peca -> Tempo -> Propriedades -> Carro -> Carro
velPesoFinal a t pr (Carro p d (x,y)) = Carro p d (alteraVelPeso a t pr (transformaAng d) (x,y) (toPolar (x,y)))



-- | Altera o modulo do vetor velocidade de um carro que esta a sofrer acao do peso, exercicida quando esta numa rampa

alteraVelPeso :: Peca -> Tempo -> Propriedades -> Double -> Velocidade -> Velocidade -> Velocidade
alteraVelPeso (Peca p o) t (Propriedades at pn ac pe ni ro) b (x,y) (d,a) | p == (Rampa Este)  = somaVetores (toCartesiano ((pe*t),(pi)))       (x,y)
                                                                          | p == (Rampa Oeste) = somaVetores (toCartesiano ((pe*t),(0)))        (x,y)
                                                                          | p == (Rampa Norte) = somaVetores (toCartesiano ((pe*t),((3*pi)/2))) (x,y)
                                                                          | p == (Rampa Sul)   = somaVetores (toCartesiano ((pe*t),(pi/2)))     (x,y)
                                                                          | otherwise          = (x,y)



----------------------------------------------------------------------------------------------------------------------------------------------------------------



-- | Altera o estado de um jogo, devido a forca do atrito e a forca dos pneus exercida num carro

vamosCons :: Tempo -> Jogo -> Int -> Jogo
vamosCons t (Jogo m p c n h) i = Jogo m p (velCons t p c i) n (somaPos c h i) 



-- | Seleciona o carro que esta a sofrer influencia da forca do atrito e da forca dos pneus
velCons :: Tempo -> Propriedades -> [Carro] -> Int -> [Carro]
velCons t p (x:xs) a = if a==0 then (velConsFinal t p x):xs
                       else x:(velCons t p xs (a-1))



-- | Altera o vetor velocidade de um carro quando este esta a sofrer influencia da forca do atrito e da forca dos pneus

velConsFinal :: Tempo -> Propriedades -> Carro -> Carro
velConsFinal t pr (Carro p d (x,y)) = Carro p d (alteraVelCons t pr (transformaAng d) (x,y) (toPolar (x,y)))



-- | Altera o modulo do vetor velocidade de um carro que esta esta a sofrer influencia da forca do atrito e da forca dos pneus

alteraVelCons :: Tempo -> Propriedades -> Double -> Velocidade -> Velocidade -> Velocidade
alteraVelCons t (Propriedades at pn ac pe ni ro) b (x,y) (d,a) = somaVetores (toCartesiano (((sin e)*pn*d*t),(detAng b a))) (somaVetores (toCartesiano ((at*t*d),(pi+a))) (x,y))
                                                     where e = abs(b-a)



-- | Atualiza o historico de posicoes dos carros

somaPos :: [Carro] -> [[Posicao]] -> Int -> [[Posicao]]
somaPos (x:xs) (y:ys) z = if z==0 then (atualPos x y):ys
	                      else y:(somaPos xs ys (z-1))



-- | Adiciona a lista de posicoes, a posicao atual do carro

atualPos :: Carro -> [Posicao] -> [Posicao]
atualPos (Carro (a,b) d v) [] = [((floor a),(floor b))]
atualPos (Carro (a,b) d v)  ((x,y):xs) = if (floor a)==x && (floor b)==y then ((x,y):xs) 
	                                     else ((floor a),(floor b)):(x,y):xs



--- | Determina qual o angulo do vetor perpendicular a direçao do carro, no sentido oposto a velocidade

detAng :: Angulo -> Angulo -> Angulo
detAng x y = if (abs(x-y))<=pi then x+((3*pi)/2)
	         else x+(pi/2)