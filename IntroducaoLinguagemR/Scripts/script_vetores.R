# Introdução à linguagem R
#Vetores

setwd("C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts")
getwd()


# E quando os dados que já vimos não são suficientes para armazenar?
# Pense em uma planilha...

# Vetor: lista de elementos
# 1 dimensão
# 1 tipo de dado

vetor = c(1:10)
vetor
mode(vetor)
class(vetor)
typeof(vetor)


# Qual é o tamanho dele?

length(vetor)

# vetor de strings 
cores = c('azul', 'amarelo', 'branco')
cores

# vetor de decimais
decimais = c(1.26, 5.65, 3.49)
decimais

# função seq
vetor_seq = seq(1:10)
vetor_seq
is.vector(vetor_seq)

# função rep
vetor_rep = rep(1:10)
vetor_rep
is.vector(vetor_rep)


# Como buscar um elemnto dentro de um vetor?

vetor
vetor[1]
vetor[2]
vetor[5]

# Combinação de vetores
a = c(1:5)
b = c('a', 'b', 'c')
c = c(a, b)
c


# Operação com vetores
a
d = c(6:10)
d
a + d
a - d
a * d
a / d


# vetor nomeado
vetor1 = c('Thiago', 'BH', 'M')
vetor1
names(vetor1) = c('nome', 'cidade', 'sexo')
vetor1
