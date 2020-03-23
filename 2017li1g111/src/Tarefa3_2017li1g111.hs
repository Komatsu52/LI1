module Tarefa3_2017li1g111 where

import LI11718

import Tarefa1_2017li1g111 

import Tarefa2_2017li1g111 



testesT3 :: [(Tabuleiro,Tempo,Carro)]
testesT3 = [(um,        0.333,  (Carro (1.45,2.8)  250 (0.5,2))),
            (quatro,    0.167,  (Carro (1.0,4.0)   180 (-2.45,0))),
            (seis,      0.25,   (Carro (5.0,2.5)   135 (-1,2))),
            (vinteTres, 0.0958, (Carro (6.97,3.3)  45  (-8,-4))),
            (vinteSeis, 0.076,  (Carro (3.8,5.98)  35  (9.6,7.06))),
            (dezanove,  0.486,  (Carro (7.0,6.765) 76  (3.8,-4.09))),
            (oito,      0.0865, (Carro (4.78,5.29) 265 (9.8,5.2))),
            (um,        0.12,   (Carro (3.05,3.98) 23  (-2.1,075))),
            (quatro,    0.34,   (Carro (7.12,5.89) 153 (5,2))),
            (seis,      0.05,   (Carro (5.8,4.5)   91  (-0.3,6.3))),
            (vinteTres, 0.03,   (Carro (3.27,6.7)  73  (3.1,6.0))),
            (vinteSeis, 0.47,   (Carro (5.9,3.6)   286 (1.6,4.9))),
            (dezanove,  0.01,   (Carro (4.6,3.816) 9   (0.4,-6.1))),
            (oito,      0.081,  (Carro (7.9,9.4)   49  (-0.93,3.2))),
            (vinteNove, 0.33,   (Carro (10.5,2.99) 125 (0,10)))]



movimenta :: Tabuleiro -> Tempo -> Carro -> Maybe Carro
movimenta m t c | (verLava (sacarPeca m c) (sacarPeca m (novoCarro t c)))==True         = Nothing 
                | (verAlturaQueda (sacarPeca m c) (sacarPeca m (novoCarro t c)))==False = Nothing
	              | otherwise                                                             = verCarroFinal (sacarPeca m c) (sacarPeca m (novoCarro t c)) t c 



{-| 
Transforma uma velocidade dada em forma de vetor cartesiano para uma velocidade em forma de vetor polar 
(primeiro vem o modulo do vetor, depois vem o angulo que faz) 
|-}

toPolar :: Ponto -> Ponto
toPolar (x,y) = (d,a)
                where d = abs(sqrt(x^2+y^2))
                      a = anguloXY (x,(-y))



-- | Calcula o angulo de um vetor 

anguloXY :: Ponto -> Double
anguloXY (x,y) | x==0 && y==0 = 0
               | x==0 && y>0  = pi/2
               | x==0 && y<0  = (3*pi)/2
               | x>0  && y==0 = 0
               | x<0  && y==0 = pi 
               | x>0  && y>0  = atan (y/x) 
               | x<0  && y>0  = pi - atan (y/(-x))
               | x>0  && y<0  = 2*pi - atan ((-y)/x)
               | x<0  && y<0  = pi + atan ((-y)/(-x))



-- | Transforma um ponto polar num ponto cartesiano

toCartesiano :: Ponto -> Ponto
toCartesiano (d,a) = ((d*cos a),-(d*sin a))



-- | Transforma angulos em graus, para angulos em radianos

transformaAng :: Angulo -> Double
transformaAng x = ((pi)*x)/(180)



-- | Soma dois pontos, ou dois vetores, ou um ponto e um vetor

somaPontos :: Ponto -> Ponto -> Ponto
somaPontos (x,y) (a,b) = ((x+a),(y+b))



-- | Atualiza-nos o estado de um dado carro, passado um dado tempo em que sofreu influencia do vetor velocidade

novoCarro :: Tempo -> Carro -> Carro 
novoCarro t (Carro (x,y) d (a,b)) = Carro (atualizaPos t (x,y) (toPolar (a,b))) d (a,b)



-- | Atualiza-nos a posicao de um dado carro, passado um dado tempo em que sofreu influencia do vetor velocidade

atualizaPos :: Tempo -> Ponto -> Ponto -> Ponto
atualizaPos t (x,y) (d,a) = somaPontos (x,y) (toCartesiano ((d*t),a))



-- | Determina a peca em que um dado carro esta

sacarPeca :: Tabuleiro -> Carro -> Peca
sacarPeca t (Carro (a,b) d v) = pegaPeca ((floor a),(floor b)) t



-- | Determina se uma dada peça e lava ou nao

verLava :: Peca -> Peca -> Bool
verLava (Peca a b) (Peca x y) | x==Lava && b>=y = True
                              | otherwise       = False



-- | Verifica se o carro faz uma transicao, entre pecas, que lhe permite sobreviver

verAlturaQueda :: Peca -> Peca -> Bool
verAlturaQueda (Peca (Rampa x) y) (Peca a b) | y==b || y==(b+1) || y==(b-1) = True
	                                           | y<b                          = True
	                                           | otherwise                    = False

verAlturaQueda (Peca a b) (Peca (Rampa x) y) | y==b || y==(b-1) = True
                                             | y>b              = True
                                             | otherwise        = False

verAlturaQueda (Peca a b) (Peca x y) = if b>y then False 
	                                   else True



-- | Verifica como fica o carro, caso este embata ou nao com uma parede

verCarroFinal :: Peca -> Peca -> Tempo -> Carro -> Maybe Carro
verCarroFinal (Peca (Rampa x) y) (Peca a b) t c | y==(b-1) || y==b && y==(b+1) = Just (novoCarro t c) 
                                                | otherwise                    = Just (novoCarro t (alteraCarro c))

verCarroFinal (Peca a b) (Peca c d) t x | d>b       = Just (alteravel2 (novoCarro t (alteraCarro x)))
	                                      | otherwise = Just (novoCarro t x)
  


alteravel2 :: Carro -> Carro
alteravel2 (Carro p d (x,y)) = Carro p d ((-x),(-y))


-- | Modifica o vetor velocidade de um carro que embateu com uma parede

alteraCarro :: Carro -> Carro
alteraCarro (Carro p d (x,y)) = Carro p d ((-x),(-y))