#Introdução à linguagem R
#Matrizes

# Configurando o diretório
setwd("C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts")
getwd()


# e quando precisamos de mais de uma dimensão?
# matrizes
# representa linhas e colunas
# duas dimensões
# um tipo de dado

matrix(c(1, 2, 3, 4, 5, 6), nrow=3)
matrix(c(1, 2, 3, 4, 5, 6), nrow=2)
matrix(c(1:10), nrow=2)

# e se eu quiser fixar o numero de colunas?
# o numero de elementos tem que ser multiplo do numero de linhas

matriz = matrix(c(1,2,3, 4,5, 6), ncol = 2)
matriz
mode(matriz)
class(matriz)
length(matriz)
dim(matriz)

matrix(c(1:9), ncol = 3, nrow = 3)

# como criar uma matriz diagonal?

elementos = c(1,1,1,1)
diag(elementos)

elementos1 = c(1,2,3,1)
diag(elementos1)

# como criar uma matriz transposta
matriz
t(matriz)

#matriz inversa
solve(matriz)

matriz1 = matrix(c(2,2,3,3), nrow=2)
matriz1
solve(matriz1)

# Fatiar a matriz

matriz
matriz[2,2]
matriz[1,2]
matriz[,2]


# operações matriciais
matrizz = matrix(c(1:4), nrow = 2)
matrizzz = matrix(c(5:8), nrow = 2)

matrizz * matrizzz
matrizz + matrizzz
matrizz - matrizzz
matrizz / matrizzz

vetor = c(2,4,6,8)
matrizz * vetor

# multipliacação matricial
matrizz %% matrizzz
vetor = 5

#Nomeado essa matriz

dimnames(matrizz) = (list(c('l1','l2'),c('c1','c2')))
matrizz

#teste combinações com as matrizes
cbind(matrizz, matrizzz)
rbind(matrizz,matrizzz)

# e se eu precisar de mais de duas dimensões?
# array
# várias dimensões
# um tipo de dado

array = array((1:8),dim = c(2,2,2))
array    

M = matrix(c(1:10), nrow = 5, ncol = 2, dimnames = list(c('a', 'b', 'c', 'd', 'e'), c('A', 'B')))
M['e', 'A']
mode(c('a', 'b', 'c'))
mode(3.32e16)
mode(1/3)
mode(sqrt(-2i))

M = matrix(c(1:9), 3, 3, byrow = T, dimnames = list(c('a','b','c'), c('d', 'e', 'f')))
rownames(M)

X = c(1,2,3,3,5,3,2,4,NA)
factor(X)
