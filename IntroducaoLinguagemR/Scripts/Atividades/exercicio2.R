# Lista de Exercicios - Unidade 2 - Estrutura de controle e Funções
setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()


# Crie um vetor de 20 elementos numéricos decimais

a <- c()

for(numero in 1:20){
  num <- as.numeric(readline(prompt = 'Numero: '))
  append(a,num)
}
print(a)



# crie um loop que verifica se há numeros menores que 5 no vetor anterior e imprima no console 

vetor1 = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,2)
for(i in vetor1){
  if(i < 5){
    print("Numero menor que 5")
  } else {
    print("Numero não é menor que 5")
  }
}


# considere a string abaixo. Substitua a palavra "textos" por "frases"

str = c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes",
        "e exploracao de textos", "podemos buscar padroes em digitos", "como por exemplo",
        "cy080992")
str

gsub("textos", "frases", str)


# Construa uma matriz 3x3, e em seguida crie uma matriz composta do valor transposto da primeira matriz

matriz = matrix(c(1:9), nrow = 3, ncol = 3)
matriz

matrizz = t(matriz)
matrizz

# Multiplicação matricial 

matriz %% matrizz

# multiplicação comum

matriz * matrizz

# soma de matrizes 

matriz + matrizz

# faça nomeação de cada linha e coluna 

dimnames(matriz) = list(c('l1', 'l2', 'l3'), c('c1', 'c2', 'c3'))
matriz
