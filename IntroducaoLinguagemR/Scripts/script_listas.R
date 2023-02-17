# Introdução à Linguagem R
# Listas

#Configurando o diretório

setwd("C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts")
getwd()

# Vetor é uma lista de um tipo de dado, assim como a matriz
# e quando eu quiser utilizar mais de um tipo de dado?

vetor = c('a', 'b', 'c')
matriz = matrix(1:6, nrow = 2)

lista = list(a = vetor, b = matriz, c = 'f')
lista


length(lista)
mode(lista)
class(lista)
typeof(lista)

# exemplos

lista1 = list('A', 'B', 'C')
lista1

lista2 = list(c('A', 'B', 'C', 'D'))
lista2

lista3 = list(matrix(c('A', 'B', 'C', 'D'), nrow = 2), 'E', 'F')
lista3

# slicing da lista

lista
lista[1]
lista[2]
lista[3]

# um elemento dentro da dimensão

lista[[1]][1]
lista[[2]][2] = 5
lista[2]


# Nomear a lista

names(lista) = c('Vetor', 'Matriz','Letra')
lista

# Como chamar diretamente dentro da lista
lista$matriz
