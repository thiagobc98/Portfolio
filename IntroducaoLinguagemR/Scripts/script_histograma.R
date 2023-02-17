# Introdução à Linguagem R

setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()

# Histograma 
# Gráfico bastante útil e importante!!!

# Carregando os dados

View(cars)
attach(cars)

# Quero utilizar apenas uma coluna
# Histograma é a distribuição de frequencia de uma variável
# Os dados são divididos em classes e para cada classe há uma contagem de frequencia 

dados = cars$speed

# Construindo o histograma

hist(dados)

# Os blocos do histograma são chamados de bins
# Os bins são diferentes do gráfico de colunas 
# Podemos alterar o tamanho dessas caixinhas com o parâmetro breaks

hist(dados, breaks = 10, main= 'Histograma do dataset cars')

# Temos a mesma informação, distribuida de uma forma diferente

# Você mesmo pode fixar as classes

hist(dados, breaks = c(0, 5, 10, 20, 30), main = 'Histograma', labels = TRUE)

# Podemos definir os limites do eixo y

hist(dados, breaks = 10, ylim = c(0,10), main = 'Histograma')

# Adicionando uma linha ao histograma

grafico = hist(dados, breaks = 10, ylim = c(0, 10), main = 'Histograma')
xaxis = seq(min(dados), max(dados), length = 10)
yaxis = dnorm(xaxis, mean=mean(dados), sd=sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)

lines(xaxis, yaxis, col = 'red')
