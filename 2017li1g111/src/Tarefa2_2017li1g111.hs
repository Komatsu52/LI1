module Tarefa2_2017li1g111 where

import LI11718

import Tarefa1_2017li1g111 



testesT2 :: [Tabuleiro]
testesT2 = [um,dois,tres,quatro,cinco,seis,sete,oito,nove,dez,
            onze,doze,treze,catorze,quinze,dezasseis,dezassete,dezoito,dezanove,vinte,
            vinteUm,vinteDois,vinteTres,vinteQuatro,vinteCinco,vinteSeis,vinteSete,vinteOito]



um :: Tabuleiro
um =          [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

dois :: Tabuleiro
dois =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

tres :: Tabuleiro
tres =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca Recta 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca (Curva Oeste) 0,Peca (Curva Este) 0,Peca Lava 0],        [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

quatro :: Tabuleiro
quatro =      [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

cinco :: Tabuleiro
cinco =       [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Rampa Oeste) (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca Recta (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]          

seis :: Tabuleiro
seis =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca (Curva Sul) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

sete :: Tabuleiro
sete =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca (Curva Sul) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
 
oito :: Tabuleiro            
oito =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
   
nove :: Tabuleiro           
nove =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca Lava 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

dez :: Tabuleiro 
dez =         [[Peca Lava 0,Peca Lava 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca Lava 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Oeste) 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

onze :: Tabuleiro
onze =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 1,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

doze :: Tabuleiro
doze =        [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
        
treze :: Tabuleiro            
treze =       [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

catorze :: Tabuleiro
catorze =     [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Este) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

quinze :: Tabuleiro
quinze =      [[Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca Recta 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca (Curva Oeste) 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

dezasseis :: Tabuleiro
dezasseis =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 2,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

dezassete  :: Tabuleiro
dezassete =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Rampa Oeste) 1,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

dezoito :: Tabuleiro
dezoito =     [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Rampa Oeste) (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca Recta (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
        
dezanove :: Tabuleiro            
dezanove =    [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca (Curva Sul) 1,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinte :: Tabuleiro            
vinte =       [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteUm :: Tabuleiro           
vinteUm =     [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca Lava 0,Peca (Rampa Oeste) 0,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteDois :: Tabuleiro
vinteDois =   [[Peca Lava 0,Peca Lava 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca Lava 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Oeste) 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]


vinteTres :: Tabuleiro
vinteTres =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 1,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteQuatro :: Tabuleiro
vinteQuatro = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Rampa Este) 1,Peca (Curva Este) 2,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteCinco :: Tabuleiro
vinteCinco =  [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteSeis :: Tabuleiro
vinteSeis =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteSete :: Tabuleiro
vinteSete =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Este) 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Rampa Oeste) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteOito :: Tabuleiro           
vinteOito =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 6,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

vinteNove :: Tabuleiro
vinteNove =   [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 1,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Rampa Norte) 1,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Rampa Este) (-2),Peca (Curva Sul) (-1),Peca Lava 0],
               [Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca (Rampa Sul) (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca (Curva Oeste) 1,Peca (Rampa Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca Lava 0],
               [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]




-- | Verifica nos se um dado mapa e ou nao valido

valida :: Mapa -> Bool
valida (Mapa ((x,y),o) (z:zs)) = if (verRetangular (Mapa ((x,y),o) (z:zs))) && (verLinhas (Mapa ((x,y),o) (z:zs))) 
                                 && (verColunas (Mapa ((x,y),o) (z:zs))) &&  (verPeca (Mapa ((x,y),o) (z:zs))) && (altLavaNula (Mapa ((x,y),o) (z:zs))) 
                                 && (alturas k) && (proxima k) then True else False
                                 where k = (pecasOrientadas ((pegaPeca (x,y) (z:zs)),o) (x,y) (z:zs))

-- | Verifica se o tabuleiro e retangular

verRetangular :: Mapa -> Bool
verRetangular (Mapa (a,b) [y])      = True
verRetangular (Mapa (a,b) (x:y:xs)) = if (length x)==(length y) then verRetangular (Mapa (a,b) (y:xs))
                                      else False



-- | Verifica se a primeira e a ultima linhas do tabuleiro sao compostas apenas por pecas de lava

verLinhas :: Mapa -> Bool
verLinhas (Mapa (x,y) [])     = False
verLinhas (Mapa (a,b) (x:xs)) = if (valLinha x)==True && (valLinha (last xs))==True then True
                                else False



-- | Verifica se uma linha e apenas composta por pecas de lava

valLinha :: [Peca] -> Bool
valLinha []     = True
valLinha (x:xs) | x==(Peca Lava altLava) = valLinha xs
	           | otherwise              = False



-- | Verifica se a primeira e a ultima colunas do tabuleiro sao compostas apenas por pecas de lava

verColunas :: Mapa -> Bool
verColunas (Mapa (x,y) [])     = True
verColunas (Mapa (a,b) (x:xs)) | (valColuna x)==True = verColunas (Mapa (a,b) xs)
	                          | otherwise           = False



-- | Verifica se a primeira e a ultima pecas de uma linha de pecas sao pecas de lava 

valColuna :: [Peca] -> Bool
valColuna []     = True
valColuna (x:xs) | x==(Peca Lava altLava) && (last xs)==(Peca Lava altLava) = True
	           | otherwise                                                = False



-- | Verifica se a orientacao inicial e compativel com a primeira peca

verPeca :: Mapa -> Bool
verPeca (Mapa ((a,b),z) [])     = False
verPeca (Mapa ((a,b),z) (x:xs)) | b==0      = (selPeca a x z)
	                          | otherwise = verPeca (Mapa ((a,(b-1)),z) xs)



-- | Determina a peca que ocupa uma dada posicao

selPeca :: Int -> [Peca] -> Orientacao -> Bool
selPeca a []     z = False
selPeca a (y:ys) z | a==0      = (valPeca y z)
	             | otherwise = (selPeca (a-1) ys z)



-- | Verifica se uma dada peca pode ser a primeira do caminho

valPeca :: Peca -> Orientacao -> Bool
valPeca (Peca Recta  x)    z = True
valPeca (Peca Lava   x)    z = False
valPeca (Peca (Rampa x) y) z | (x==Este  || x==Oeste) && z==Este  = True
                             | (x==Este  || x==Oeste) && z==Oeste = True
                             | (x==Norte || x==Sul)   && z==Norte = True
                             | (x==Norte || x==Sul)   && z==Sul   = True   
	                        | otherwise = False

valPeca (Peca (Curva x) y) z | (x==Este  || x==Sul)   && z==Este  = True
                             | (x==Oeste || x==Norte) && z==Oeste = True
                             | (x==Norte || x==Este)  && z==Norte = True
                             | (x==Sul   || x==Oeste) && z==Sul   = True
	                        | otherwise = False


	               
-- | Verifica se todas as pecas de lava de um mapa possuem altura nula

altLavaNula :: Mapa -> Bool
altLavaNula (Mapa a [])     = True
altLavaNula (Mapa a (x:xs)) | (valAltLava x)==True  = altLavaNula (Mapa a xs)
	                       | otherwise             = False



-- | Verifica se todas as pecas de lava de uma linha possuem altura nula

valAltLava :: [Peca] -> Bool
valAltLava []              = True
valAltLava ((Peca x y):xs) | (x==Lava && y/=0) = False
                           | otherwise = valAltLava xs



-- | Seleciona uma peca num dado mapa

pegaPeca :: Posicao -> Tabuleiro -> Peca
pegaPeca (a,b) (x:xs) | b==0      = ((!!) x a)
                      | otherwise = pegaPeca (a,(b-1)) xs



{- | Dando uma peca e uma orientacao, uma posicao inicial e um tabuleiro, da-nos uma lista de pares (Peca,Orientacao), 
estando emparelhadas as pecas as suas respetivas orientacoes
-}

pecasOrientadas :: (Peca,Orientacao) -> Posicao -> Tabuleiro -> [(Peca,Orientacao)]
pecasOrientadas (p,o) (x,y) t = pecasOrientadasAux (p,o) ((x,y),o) (x,y) t []



{- | Dada uma peca, a sua orientacao, e a sua posicao no Tabuleiro; um par com a posicao inicial e a sua orientacao; um Tabuleiro; 
e uma lista com as pecas ja percorridas, e as suas orientacoes, determina nos, tendo em conta a posicao da peca seguinte, se é possivel avancar para a proxima peca.
Se sim, entao a peca atual vai para a lista de pecas percorridas, e a funcao continua, com uma nova peca. 
-}

pecasOrientadasAux :: (Peca,Orientacao) -> (Posicao,Orientacao) -> Posicao -> Tabuleiro -> [(Peca,Orientacao)] -> [(Peca,Orientacao)]
pecasOrientadasAux ((Peca Lava  h),o)                 a       b     c    d = []
pecasOrientadasAux ((Peca Recta h),Este)          ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a+1),b),Este)) ==True  = l ++ [((Peca Recta h),Este)]
                                                                           | (verFim ((x,y),e) (((a+1),b),Este)) ==False = pecasOrientadasAux ((pegaPeca ((a+1),b) (z:zs)),Este)  ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca Recta h),Este)])

pecasOrientadasAux ((Peca Recta h),Norte)         ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b-1)),Norte))==True  = l ++ [((Peca Recta h),Norte)]
                                                                           | (verFim ((x,y),e) ((a,(b-1)),Norte))==False = pecasOrientadasAux ((pegaPeca (a,(b-1)) (z:zs)),Norte) ((x,y),e) (a,(b-1)) (z:zs) (l++[((Peca Recta h),Norte)])
                                                                       
pecasOrientadasAux ((Peca Recta h),Oeste)         ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a-1),b),Oeste))==True  = l ++ [((Peca Recta h),Oeste)]
                                                                           | (verFim ((x,y),e) (((a-1),b),Oeste))==False = pecasOrientadasAux ((pegaPeca ((a-1),b) (z:zs)),Oeste) ((x,y),e) ((a-1),b) (z:zs) (l++[((Peca Recta h),Oeste)])
                                                                       
pecasOrientadasAux ((Peca Recta h),Sul)           ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==True  = l ++ [((Peca Recta h),Sul)]
                                                                           | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==False = pecasOrientadasAux ((pegaPeca (a,(b+1)) (z:zs)),Sul)   ((x,y),e) (a,(b+1)) (z:zs) (l++[((Peca Recta h),Sul)])                                                                     

pecasOrientadasAux ((Peca (Curva Norte) h),Oeste) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b+1)),(rodaEsq Oeste)))==True  = l ++ [((Peca (Curva Norte) h),Oeste)]
                                                                           | (verFim ((x,y),e) ((a,(b+1)),(rodaEsq Oeste)))==False = pecasOrientadasAux ((pegaPeca (a,(b+1)) (z:zs)),(rodaEsq Oeste)) ((x,y),e) (a,(b+1)) (z:zs) (l++[((Peca (Curva Norte) h),Oeste)])
                                                                       
pecasOrientadasAux ((Peca (Curva Norte) h),Norte) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a+1),b),(rodaDir Norte)))==True  = l ++ [((Peca (Curva Norte) h),Norte)]
                                                                           | (verFim ((x,y),e) (((a+1),b),(rodaDir Norte)))==False = pecasOrientadasAux ((pegaPeca ((a+1),b) (z:zs)),(rodaDir Norte)) ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca (Curva Norte) h),Norte)])

pecasOrientadasAux ((Peca (Curva Oeste) h),Oeste) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b-1)),(rodaDir Oeste)))==True  = l ++ [((Peca (Curva Oeste) h),Oeste)]
                                                                           | (verFim ((x,y),e) ((a,(b-1)),(rodaDir Oeste)))==False = pecasOrientadasAux ((pegaPeca (a,(b-1)) (z:zs)),(rodaDir Oeste)) ((x,y),e) (a,(b-1)) (z:zs) (l++[((Peca (Curva Oeste) h),Oeste)])

pecasOrientadasAux ((Peca (Curva Oeste) h),Sul)   ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a+1),b),(rodaEsq Sul)))  ==True  = l ++ [((Peca (Curva Oeste) h),Sul)]
                                                                           | (verFim ((x,y),e) (((a+1),b),(rodaEsq Sul)))  ==False = pecasOrientadasAux ((pegaPeca ((a+1),b) (z:zs)),(rodaEsq Sul))   ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca (Curva Oeste) h),Sul)])

pecasOrientadasAux ((Peca (Curva Este)  h),Este)  ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b+1)),(rodaDir Este))) ==True  = l ++ [((Peca (Curva Este) h),Este)]
                                                                           | (verFim ((x,y),e) ((a,(b+1)),(rodaDir Este))) ==False = pecasOrientadasAux ((pegaPeca (a,(b+1)) (z:zs)),(rodaDir Este))  ((x,y),e) (a,(b+1)) (z:zs) (l++[((Peca (Curva Este) h),Este)])
                                                                       
pecasOrientadasAux ((Peca (Curva Este)  h),Norte) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a-1),b),(rodaEsq Norte)))==True  = l ++ [((Peca (Curva Este) h),Norte)]
                                                                           | (verFim ((x,y),e) (((a-1),b),(rodaEsq Norte)))==False = pecasOrientadasAux ((pegaPeca ((a-1),b) (z:zs)),(rodaEsq Norte)) ((x,y),e) ((a-1),b) (z:zs) (l++[((Peca (Curva Este) h),Norte)])

pecasOrientadasAux ((Peca (Curva Sul)   h),Este)  ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b-1)),(rodaEsq Este))) ==True  = l ++ [((Peca (Curva Sul) h),Este)]
                                                                           | (verFim ((x,y),e) ((a,(b-1)),(rodaEsq Este))) ==False = pecasOrientadasAux ((pegaPeca (a,(b-1)) (z:zs)),(rodaEsq Este))  ((x,y),e) (a,(b-1)) (z:zs) (l++[((Peca (Curva Sul) h),Este)])
                                                                       
pecasOrientadasAux ((Peca (Curva Sul)   h),Sul)   ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a-1),b),(rodaDir Sul)))  ==True  = l ++ [((Peca (Curva Sul) h),Sul)]
                                                                           | (verFim ((x,y),e) (((a-1),b),(rodaDir Sul)))  ==False = pecasOrientadasAux ((pegaPeca ((a-1),b) (z:zs)),(rodaDir Sul))   ((x,y),e) ((a-1),b) (z:zs) (l++[((Peca (Curva Sul) h),Sul)])

pecasOrientadasAux ((Peca (Rampa Norte) h),Sul)   ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==True  = l ++ [((Peca (Rampa Norte) h),Sul)]
                                                                           | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==False = pecasOrientadasAux ((pegaPeca (a,(b+1)) (z:zs)),Sul)   ((x,y),e) (a,(b+1)) (z:zs) (l++[((Peca (Rampa Norte) h),Sul)])

pecasOrientadasAux ((Peca (Rampa Norte) h),Norte) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b-1)),Norte))==True  = l ++ [((Peca (Rampa Norte) h),Norte)]
                                                                           | (verFim ((x,y),e) ((a,(b-1)),Norte))==False = pecasOrientadasAux ((pegaPeca (a,(b-1)) (z:zs)),Norte) ((x,y),e) (a,(b-1)) (z:zs) (l++[((Peca (Rampa Norte) h),Norte)])

pecasOrientadasAux ((Peca (Rampa Sul)   h),Sul)   ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==True  = l ++ [((Peca (Rampa Sul) h),Sul)]
                                                                           | (verFim ((x,y),e) ((a,(b+1)),Sul))  ==False = pecasOrientadasAux ((pegaPeca (a,(b+1)) (z:zs)),Sul)   ((x,y),e) (a,(b+1)) (z:zs) (l++[((Peca (Rampa Sul) h),Sul)])

pecasOrientadasAux ((Peca (Rampa Sul)   h),Norte) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) ((a,(b-1)),Norte))==True  = l ++ [((Peca (Rampa Sul) h),Norte)]
                                                                           | (verFim ((x,y),e) ((a,(b-1)),Norte))==False = pecasOrientadasAux ((pegaPeca (a,(b-1)) (z:zs)),Norte) ((x,y),e) (a,(b-1)) (z:zs) (l++[((Peca (Rampa Sul) h),Norte)])

pecasOrientadasAux ((Peca (Rampa Este)  h),Este)  ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a+1),b),Este)) ==True  = l ++ [((Peca (Rampa Este) h),Este)]
                                                                           | (verFim ((x,y),e) (((a+1),b),Este)) ==False = pecasOrientadasAux ((pegaPeca ((a+1),b) (z:zs)),Este)  ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca (Rampa Este) h),Este)])
                                                                       
pecasOrientadasAux ((Peca (Rampa Este)  h),Oeste) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a-1),b),Oeste))==True  = l ++ [((Peca (Rampa Este) h),Oeste)]
                                                                           | (verFim ((x,y),e) (((a-1),b),Oeste))==False = pecasOrientadasAux ((pegaPeca ((a-1),b) (z:zs)),Oeste) ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca (Rampa Este) h),Oeste)])                                                                      

pecasOrientadasAux ((Peca (Rampa Oeste) h),Este)  ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a+1),b),Este)) ==True  = l ++ [((Peca (Rampa Oeste) h),Este)]
                                                                           | (verFim ((x,y),e) (((a+1),b),Este)) ==False = pecasOrientadasAux ((pegaPeca ((a+1),b) (z:zs)),Este)  ((x,y),e) ((a+1),b) (z:zs) (l++[((Peca (Rampa Oeste) h),Este)])

pecasOrientadasAux ((Peca (Rampa Oeste) h),Oeste) ((x,y),e) (a,b) (z:zs) l | (verFim ((x,y),e) (((a-1),b),Oeste))==True  = l ++ [((Peca (Rampa Oeste) h),Oeste)]
                                                                           | (verFim ((x,y),e) (((a-1),b),Oeste))==False = pecasOrientadasAux ((pegaPeca ((a-1),b) (z:zs)),Oeste) ((x,y),e) ((a-1),b) (z:zs) (l++[((Peca (Rampa Oeste) h),Oeste)])

pecasOrientadasAux ((Peca k h),o)                 ((x,y),e) (a,b) (z:zs) l = []



-- | Verifica se uma dada posicao e a posicao final, e se a orientacao associada a essa posicao corresponde com a orientacao inicial

verFim :: (Posicao,Orientacao) -> (Posicao,Orientacao) -> Bool
verFim ((x,y),o) ((a,b),e) | x==a && y==b && o==e = True
                           | otherwise            = False



-- | Determina se a altura de um percurso e sempre compativel

alturas :: [(Peca,Orientacao)] -> Bool
alturas []     = False
alturas (x:xs) = alturasAux [] (x:xs)


-- | Determina se a altura de duas pecas consecutivas e compativel, e se a ultima peca e compativel com a primeira (o fim do caminho e compativel com o inicio)

alturasAux :: [(Peca,Orientacao)] -> [(Peca,Orientacao)] -> Bool
alturasAux []         [x]      = False
alturasAux ((a,o):xs) [(b,e)]  = alturasAuxAux (b,e) (a,o)
alturasAux x          (y:z:zs) | (alturasAuxAux y z)==True = alturasAux (x++[y]) (z:zs)
                               | otherwise = False



-- | Determina se a altura de duas pecas e compativel

alturasAuxAux :: (Peca,Orientacao) -> (Peca,Orientacao) -> Bool

alturasAuxAux ((Peca (Rampa Norte) h),Norte) ((Peca a x),e) | x==(h+1)  = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Norte) h),Sul)   ((Peca a x),e) | x==h      = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Sul)   h),Norte) ((Peca a x),e) | x==h      = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Sul)   h),Sul)   ((Peca a x),e) | x==(h+1)  = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Este)  h),Este)  ((Peca a x),e) | x==(h+1)  = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Este)  h),Oeste) ((Peca a x),e) | x==h      = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Oeste) h),Este)  ((Peca a x),e) | x==h      = True
                                                            | otherwise = False

alturasAuxAux ((Peca (Rampa Oeste) h),Oeste) ((Peca a x),e) | x==(h+1)  = True
                                                            | otherwise = False

alturasAuxAux ((Peca a h),o)                 ((Peca b x),e) | h==x      = True
                                                            | otherwise = False



-- | Determina se duas pecas consecutivas de um percurso sao compativeis

proxima :: [(Peca,Orientacao)] -> Bool
proxima []       = False
proxima [x]      = True
proxima (x:y:xs) = if (proximaAux x y)==True then proxima (y:xs) 
                   else False



-- | Determina se duas pecas sao compativeis

proximaAux :: (Peca,Orientacao) -> (Peca,Orientacao) -> Bool
proximaAux ((Peca (Curva Norte) h),o) ((Peca a b),e) | o==Norte && e==(rodaDir o) = True
                                                     | o==Oeste && e==(rodaEsq o) = True
                                                     | otherwise                  = False

proximaAux ((Peca (Curva Sul) h),o)   ((Peca a b),e) | o==Sul   && e==(rodaDir o) = True
                                                     | o==Este  && e==(rodaEsq o) = True
                                                     | otherwise                  = False

proximaAux ((Peca (Curva Oeste) h),o) ((Peca a b),e) | o==Oeste && e==(rodaDir o) = True
                                                     | o==Sul   && e==(rodaEsq o) = True
                                                     | otherwise                  = False

proximaAux ((Peca (Curva Este) h),o)  ((Peca a b),e) | o==Este  && e==(rodaDir o) = True
                                                     | o==Norte && e==(rodaEsq o) = True
                                                     | otherwise                  = False

proximaAux ((Peca a h),o)             ((Peca b x),e) = if o==e then True 
                                                       else False