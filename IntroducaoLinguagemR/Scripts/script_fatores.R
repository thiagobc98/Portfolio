# Introdução à linguagem R

# Fatotes

getwd()

# Criamos etores númericos e não númericos

x = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
class(x)

y = c('a', 'b', 'c', 'd', 'e')
class(y)

# Há mais um tipo de dado -> FATOR

# Tipo de dado para armazenar variáveis categóricas (qualitativas == não numericas)
# Uteis em sumarizações estatísticas, plots
# Eficiente para armazenar valor de caracteres

# A linguagem R traz o fator pra tratar com mais performance as variáveis categóricas

# forma de criação --> factor()

# fatores ordenados - os quais preservam a ordenação natural
# (seguem a ordem alfabetica)

#forma de criação -> ord = T, ou ordered()

vetor = c('M', 'F','F', 'M', 'M')
vetor
fator_vetor = factor(vetor)
fator_vetor

class(vetor)
class(fator_vetor)
levels(fator_vetor)

# Internamente ele grava os dois niveis

# Variáveis categóricas nominais

cores = c('branca', 'amarelo', 'azul', 'vermelho')
cores
fator_cores = factor(cores)
fator_cores
class(fator_cores)
levels(fator_cores)

# Variáveis categóricas ordinais

escolaridade = c('graduacao', 'ensino medio', 'mestrado', 'mestrado', 'graduacao')
escolaridade
fator_escolaridade = factor(escolaridade, order = TRUE, 
                            levels = c('ensino medio', 'graduacao', 'mestrado'))
levels(fator_escolaridade)
fator_escolaridade

# Summary: Visão geral do conteudo das variáveis
summary(fator_escolaridade)
summary(escolaridade)


# ----------------------------------------------------------------------------

numeros = c(1,1,3,2,3,2,1,1,3,2,3,2,1,3,1,2,1)
fator_numeros = factor(numeros)
fator_numeros
numeros
levels(fator_numeros)

leg_numeros = factor(numeros, labels = c('a','b', 'c'))
leg_numeros

# fatores não ordenados

profissoes = c('professora', 'advogado', 'analista', 'vendedor', 'cientista')
profissoes

# Podemos forçar uma hierarquia

fator_profissoes = factor(profissoes)
fator_profissoes
is.ordered((fator_profissoes))

ord_fator_profissoes = factor(profissoes, levels = c('vendedor', 'professora', 'analista', 'advogada', 'cientista'), ordered = TRUE)
ord_fator_profissoes

is.ordered(ord_fator_profissoes)

# fatores em dataframes

# carregar o dataframe de venda de vídeo games

df = data.frame(read.csv(file = 'vgsales.csv', header = T, sep = ','))
head(df)
View(df)

# Visualizar  a estrutura de df
str(df)

# Para uma variável de fator

summary(df$Publisher)
df$Publisher = factor(df$Publisher)
df$Publisher
