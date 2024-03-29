## REMOVE OS OBJETOS QUE ESTÃO CRIADOS NO AMBIENTE DE TRABALHO DO R.
rm(list=ls())

## CARREGA O PACOTE AGRICOLAE, PREVIAMENTE INSTALADO
require(agricolae)

## CRIA UM VETOR COM DEZESSEIS POSIÇÕES E ARMAZENA A INFORMAÇÃO DENTRO DO OBJETO OB_TRAT.
ob_trat <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)


## CRIA UM VETOR COM DEZESSEIS POSIÇÕES E ARMAZENA A INFORMAÇÃO DENTRO DO OBJETO OB_BLOCOS
## OBSERVE QUE O VALOR DE TODAS AS POSIÇÕES DO VETOR TEM O MESMO VALOR, 3, OU SEJA SÃO TRÊS
## BLOCOS
ob_blocos=c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3)

## UTILIZANDO O COMANDO DESIGN.RCBD PARA GERAR ALEATORIAMENTE O SORTEIO PARA O DBC
## E ARMAZENANDO DENTRO DO OBJETO OB_SORTEIO
ob_sorteio <- design.rcbd(ob_trat,ob_blocos); 

## GERANDO O CROQUI PARA O DBC
## FORMA 1
(croqui_DBC <- ob_sorteio$sketch)

## FORMA 2
replicate(3,sample(ob_trat))

