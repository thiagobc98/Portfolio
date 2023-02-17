# Introdução à Linguagem R
# Data Frames

setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()

# Vetor, matriz e array trabalham com apenas um tipo de dados
# Dataframe: matriz com diferente tipos de dados
# Mais comum tipo de dados utilizado em analises de dados

#dataframe built in do R 
View(iris)
length(iris)
dim(iris)
mode(iris)
class(iris)
typeof(iris)

# algumas informações

# numero de linhas
nrow(iris)

# numero de colunas
ncol(iris)

# dimensao
dim(iris)

# cabeçalho
head(iris)

# cauda
tail(iris)


# Vamos criar nosso data frame?

df = data.frame()
df

# criando vetores 
aluno = character()
disciplina = character()
nota = numeric()

df = data.frame(c(aluno, disciplina, nota))


# criando agora com vetores completos

aluno = c('Ana', 'Bernardo', 'Thiago')
disciplina = c('Matematica', 'Matematica', 'Historia')
nota = c(8.9, 9.0, 5.8)

df = data.frame(c(aluno, disciplina, nota))
df

# adicionando uma nova coluna
comportamento = c('bom', 'regular', 'otimo')
novo_df = (cbind(df, comportamento))
novo_df


# extraindo um vetor apenas
df$nota

# extraindo um valor unico
df[2,1]

# filtros

novo_df[comportamento == 'bom']
novo_df[nota > 8]


# lendo um arquivo csv

vgsales = read.csv(file='vgsales.csv', header=TRUE, sep = ',')
df_vgsales = data.frame(vgsales)

View(df_vgsales)

head(df_vgsales)

summary(df_vgsales)

#construindo graficos

hist(vgsales$EU_Sales)
hist(vgsales$JP_Sales)
