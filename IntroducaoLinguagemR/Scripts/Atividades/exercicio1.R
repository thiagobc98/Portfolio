setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()

#crie um vetor A com 10 numeros inteiros

a = c(1:10)
a

# crie um vetor B com 10 numeros decimais

b = c(1.10,2.10,3.10, 4.10, 5.10, 6.10, 7.10, 8.10, 9.10, 10.10)
b

# crie uma matriz c com 2 linhas e 2 colunas preenchida com numeros inteiros

c = matrix(c(1:4), nrow = 2, ncol = 2)
c


# crie uma lista unindo os vetores A e B, e a matriz C criados anteriormente.

lista = list(a=a, b=b, c=c)
lista

# imprima na tela o dataframe iris, verifique quantas dimensoes existem no dataframe e imprima um resumo do dataset

View(iris)
dim(iris)
summary(iris)

# Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7

df = data.frame(subset(iris))
df
df['Sepal.Length' > 7]

# Use a função filter no dataframe iris e retorne apenas valores em que Sepal.Length > 6

iris['Sepal.Length' > 6]

3 ^ 2
8 %% 3
3 ** 2

8 %% 3
