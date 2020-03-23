{-|
Module      : Tarefa5_2017li1g111
Description : Módulo da Tarefa 5 para LI1 17/18

Módulo para a realização da Tarefa 5 de LI1 em 2017/18.
-}
module Main where

import LI11718
import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Juicy
import Tarefa1_2017li1g111
import Tarefa2_2017li1g111
import Tarefa3_2017li1g111
import Tarefa4_2017li1g111
import Tarefa6_2017li1g111
import GHC.Float

type Estado = (Jogo,[Acao],[Picture]) 

{-|
Função principal usada para animar um jogo completo.
Compilar com o GHC.
-}
main :: IO ()
main = do 
        b1 <- loadJuicy "barco1.bmp"
        b2 <- loadJuicy "barco2.bmp"
        b3 <- loadJuicy "barco3.bmp"
        ce <- loadJuicy "CEste.bmp"
        cn <- loadJuicy "CNorte.bmp"
        co <- loadJuicy "COeste.bmp"
        cs <- loadJuicy "CSul.bmp"
        m  <- loadJuicy "mar.bmp"
        re <- loadJuicy "REste.bmp"
        rn <- loadJuicy "RNorte.bmp"
        ro <- loadJuicy "ROeste.bmp"
        rs <- loadJuicy "RSul.bmp"
        t  <- loadJuicy "terra.bmp"
        play FullScreen 
             white 
             fr 
             (estadoInicial (toPicture [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t])) 
             desenhaEstado 
             reageEvento 
             reageTempo



-- | Define a janela na qual o jogo irá correr



-- | Frame rate a que o jogo corre 

fr :: Int 
fr = 100



-- | Atualiza o jogo, consoante as acoes tomadas pelos jogadores num dado intervalo de tempo

atualizaMovimenta :: Tempo -> Jogo -> [Acao] -> Jogo
atualizaMovimenta t j (a:as) = novoJogo j (jogoAct t j 0 (a:as)) (carrosAct t (jogoAct t j 0 (a:as)))



-- | Atualiza o estado de um jogo, consoante as acoes tomadas pelos jogadores, usando a funcao "atualiza" (Tarefa 4) para tal 

jogoAct :: Tempo -> Jogo -> Int -> [Acao] -> Jogo
jogoAct t j i [] = j
jogoAct t j i (a:as) = jogoAct t (atualiza t j i a) (i+1) as



-- | Atualiza o estado de um jogo, usando a funcao "movimenta" (Tarefa 4) para tal

carrosAct :: Tempo -> Jogo -> [Maybe Carro]
carrosAct t (Jogo (Mapa p tab) pr [] n h) = [] 
carrosAct t (Jogo (Mapa p tab) pr (c:cs) n h) = (movimenta tab t c):(carrosAct t (Jogo (Mapa p tab) pr cs n h))



-- | Atualiza a lista de carros de um jogo, trocando-a por uma lista de carros atualizada

novoJogo :: Jogo -> Jogo -> [Maybe Carro] -> Jogo
novoJogo (Jogo m1 pr1 c1 n1 h1) (Jogo m2 pr2 c2 n2 h2) x = Jogo m2 pr2 (transMCarro c1 x) n2 h2



-- | Cria uma nova lista de carros, a partir da lista original de carros, e da atualizada

transMCarro :: [Carro] -> [Maybe Carro] -> [Carro]
transMCarro x [] = []
transMCarro [] x = []
transMCarro (a:as) (c:cs) = (convCarro a c):(transMCarro as cs)



-- | Determina qual o carro a apresentar 

convCarro :: Carro -> Maybe Carro -> Carro
convCarro x (Just c) = c
convCarro (Carro (a,b) d v) Nothing = Carro (((fromIntegral(floor a))+0.5),((fromIntegral(floor b))+0.5)) d (0,0)



-- | Da-nos o estado inicial de um jogo

estadoInicial :: [Picture] ->  Estado
estadoInicial p = (j,[(Acao False False False False Nothing),(Acao False False False False Nothing),(bot (1/(fromIntegral fr)) j 2)],p)
       where j = (Jogo (constroi c) pr [(Carro (detPos2 (partida c)) 0 (0,0)),(Carro (detPos2 (partida c)) 0 (0,0)),(Carro (detPos2 (partida c)) 0 (0,0))] [5,5,5] [[],[],[]])



-- | Exemplo de um caminho possivel

c :: Caminho
c = [Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,CurvaEsq,CurvaDir,Sobe,CurvaDir,Avanca,CurvaDir,CurvaEsq,CurvaDir,Avanca,Avanca,Desce,Avanca,CurvaDir,Avanca,CurvaEsq,Sobe,
     CurvaDir,Avanca,Sobe,CurvaDir,Avanca,CurvaEsq,Avanca,CurvaDir,Desce,Desce,Avanca,CurvaDir,Avanca,Avanca,CurvaDir]



-- | Exemplo de uma lista de propriedades possivel

pr :: Propriedades
pr = Propriedades 1.5 2 4 3 15 90



-- | Posicao inicial do carro 1

detPos1 :: Posicao -> Ponto
detPos1 (x,y) = ((fromIntegral x),(fromIntegral y)-0.25)



-- | Posicao inicial do carro 2

detPos2 :: Posicao -> Ponto
detPos2 (x,y) = ((fromIntegral x),(fromIntegral y))



-- | Posicao inicial do carro 3

detPos3 :: Posicao -> Ponto
detPos3 (x,y) = ((fromIntegral x),(fromIntegral y)+0.25)



-- | Dado o estado de um jogo, a funcao retribui nos a aparencia atual do jogo

desenhaEstado :: Estado -> Picture
desenhaEstado ((Jogo (Mapa a t) pr c n h), ac, p) = atualizaCar c (atualizaMap t p 0) p



-- | Atualiza nos o jogo, colocando os carros nas suas posicoes, em cima do tabuleiro

atualizaCar :: [Carro] -> [Picture] -> [Picture] -> Picture
atualizaCar c p ps = Pictures (p ++ (fabricaCar c ps 1))



-- | Cria uma lista com as imagens de cada carro

fabricaCar :: [Carro] -> [Picture] -> Int -> [Picture]
fabricaCar [] p i = []
fabricaCar (c:cs) p i = (fazCarro c p i):(fabricaCar cs p (i+1))



-- | Dado um carro, a funcao retribui nos a sua imagem correspondente

fazCarro :: Carro -> [Picture] -> Int -> Picture
fazCarro (Carro (a,b) d v) [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] 1 = Translate (((double2Float a)*75)-345) (315-(double2Float b)*75) (Rotate (-(double2Float d)) (Scale 0.15 0.15 b1))
fazCarro (Carro (a,b) d v) [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] 2 = Translate (((double2Float a)*75)-345) (315-(double2Float b)*75) (Rotate (-(double2Float d)) (Scale 0.15 0.15 b2))
fazCarro (Carro (a,b) d v) [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] 3 = Translate (((double2Float a)*75)-345) (315-(double2Float b)*75) (Rotate (-(double2Float d)) (Scale 0.15 0.15 b3))



-- | Cria nos o tabuleiro de jogo

atualizaMap :: Tabuleiro -> [Picture] -> Float ->  [Picture]
atualizaMap [] p i = []
atualizaMap (x:xs) p i = (atualizaMap2 x p 0 i) ++ (atualizaMap xs p (i-1))



-- | Associa cada peca a sua respetiva imagem

atualizaMap2 :: [Peca] -> [Picture] -> Float -> Float -> [Picture]
atualizaMap2 [] p i j = []

atualizaMap2 ((Peca Lava _):xs)      [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] i j = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 t)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)

atualizaMap2 ((Peca (Rampa o) _):xs) [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] i j | o==Este  = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 re)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)
                                                                                | o==Norte = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 rn)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)
                                                                                | o==Oeste = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 ro)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)    
                                                                                | o==Sul   = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 rs)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)

atualizaMap2 ((Peca (Curva o) _):xs) [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] i j | o==Este  = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 ce)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)
                                                                                | o==Norte = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 cn)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)
                                                                                | o==Oeste = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 co)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)    
                                                                                | o==Sul   = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 cs)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)

atualizaMap2 ((Peca Recta _):xs)     [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] i j = (Translate ((i*75)-345) (315+(j*75)) (Scale 0.15 0.15 m)):(atualizaMap2 xs [b1,b2,b3,ce,cn,co,cs,m,re,rn,ro,rs,t] (i+1) j)    
    




-- | Dada uma tecla que esta ou nao a ser pressionada, a funcao altera nos o nosso estado

reageEvento :: Event -> Estado -> Estado
reageEvento (EventKey (SpecialKey KeyUp)    Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao True b c d e):xs),p)
reageEvento (EventKey (SpecialKey KeyDown)  Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a True c d e):xs),p)
reageEvento (EventKey (SpecialKey KeyLeft)  Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b True d e):xs),p) 
reageEvento (EventKey (SpecialKey KeyRight) Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b c True e):xs),p) 
reageEvento (EventKey (Char 'u')            Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d (Just 0)):xs),p) 
reageEvento (EventKey (Char 'i')            Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d (Just 1)):xs),p) 
reageEvento (EventKey (Char 'o')            Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d (Just 2)):xs),p) 
reageEvento (EventKey (Char 'p')            Down _ _) (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d (Just 3)):xs),p) 
reageEvento (EventKey (SpecialKey KeyUp)    Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao False b c d e):xs),p) 
reageEvento (EventKey (SpecialKey KeyDown)  Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a False c d e):xs),p) 
reageEvento (EventKey (SpecialKey KeyLeft)  Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b False d e):xs),p) 
reageEvento (EventKey (SpecialKey KeyRight) Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b c False e):xs),p) 
reageEvento (EventKey (Char 'u')            Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'i')            Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'o')            Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'p')            Up _ _)   (j,((Acao a b c d e):xs),p) = (j,((Acao a b c d Nothing):xs),p) 

reageEvento (EventKey (Char 's') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao True b c d e):xs),p)
reageEvento (EventKey (Char 'x') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a True c d e):xs),p)
reageEvento (EventKey (Char 'z') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b True d e):xs),p) 
reageEvento (EventKey (Char 'c') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c True e):xs),p) 
reageEvento (EventKey (Char 'q') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d (Just 0)):xs),p) 
reageEvento (EventKey (Char 'w') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d (Just 1)):xs),p) 
reageEvento (EventKey (Char 'e') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d (Just 2)):xs),p) 
reageEvento (EventKey (Char 'r') Down _ _) (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d (Just 3)):xs),p) 
reageEvento (EventKey (Char 's') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao False b c d e):xs),p) 
reageEvento (EventKey (Char 'x') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a False c d e):xs),p) 
reageEvento (EventKey (Char 'z') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b False d e):xs),p) 
reageEvento (EventKey (Char 'c') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c False e):xs),p) 
reageEvento (EventKey (Char 'q') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'w') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'e') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d Nothing):xs),p) 
reageEvento (EventKey (Char 'r') Up _ _)   (j,(x:(Acao a b c d e):xs),p) = (j,(x:(Acao a b c d Nothing):xs),p)

reageEvento _ e = e



-- | Dado um intervalo de tempo e um estado do jogo, a funcao devolve nos o estado do jogo atualizado, tendo em conta as acoes tomadas nesse intervalo de tempo

reageTempo :: Float -> Estado -> Estado 
reageTempo n (j,a,p) = ((atualizaMovimenta (float2Double n) j a),a,p)



-- | Dada uma lista de Maybe Picture, transforma na lista de Picture correspondente

toPicture :: [Maybe Picture] -> [Picture]
toPicture [] = []
toPicture ((Just p):ps) = p:(toPicture ps)
toPicture ((Nothing):ps) = toPicture ps