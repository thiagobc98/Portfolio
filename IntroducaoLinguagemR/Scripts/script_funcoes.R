# Introdução à Linguagem R

# Funções

getwd()

# Funções built-in
# sempre opte por utilizar as funções que já existem
# a eficiencia é bem maior

help(sum)
args(sum)
args(mean)

# vamos utilizar essas funções?

sum(c(1:10))
sum(1:10)

mean(c(1:10))
mean(1:10)

seq(c(1:10))
seq(1:10)

# Outras funções - também built-in
abs(-1)

vetor = c(4.5, 6.7, 8.2, 1.3)
rev(vetor)


# Utilizando funções dentro de outras funções - também built-in

mean(abs(rev(vetor)))

plot(rnorm(100))

# Vamos criar nossas proprias funções

dobro = function(x){
  x + x
}

dobro(10)
dobro(30)

# outro exemplo

potencia  = function(x, y){
  resultado = x ^ y
  print(resultado)
}

potencia(3,2)


# outro exemplo

dados = function(){
  resultado = sample(1:6, size = 1)
  resultado
}

dados()

# Qual o escopo da variavel resultado?
# Local - ela só existe dentro da função
# Tente imprimir a variavel resultado

numero = 9
numero

# agora ela é uma variavel global
# evite usar mesmo nome pra não termos problemas com variaveis locais e globais.

# Função sem fixar o numero de parametros

nome = c('Aline', 'Eliane', 'Carla')
idade = c(13, 15, 17)
sexo = c('F', 'F', 'F')

func_df = function(...){
  df = data.frame(cbind(...))
  print(df)
}

func_df(nome)
func_df(nome, idade)
func_df(nome, idade, sexo)
View(func_df(nome, idade, sexo))



# Funções especiais 

# Familia APPLY - forma elegante de fazer loops
# Conjunto de funções

# Apply() - arrays e matrizes
# tapply() - vetores divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão do lapply
# vapply() - similar ao sapply
# eapply() - gera uma lista
# mapply() - sapply multivariada
# by() - agregação com os dados de um loop

# construindo um loop da forma usual

lista = list(a=(1:10), b=(10:20))
valor_a = 0
valor_b = 0

for(i in lista$a){
  valor_a = valor_a + i
}
for (i in lista$b){
  valor_b = valor_b + i
}

valor_a
valor_b

# Utilizando o SAPPLY
sapply(lista, sum)
sapply(lista, mean)

# E se eu estiver trabalhando com matrizes?

matriz = matrix(c(1:9), nrow=3)
apply(matriz, 1, mean)
matriz

# Outras funções especiais 
# unlist - produz um vetor com elementos da lista

vetor = unlist(lista)
vetor

# objeto unidimencional 

# do.call executa uma função em um objeto
# familia apply a cada elemento, substitui um loop
# do.call a um objeto inteiro

lista2 = list(1:3, 3:6, 6:9)
lista2

lapply(lista2, sum)
do.call(sum, lista2)





