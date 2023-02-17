# Introdução à Linguagem R

setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()

# ScatterPlots - gráfico de dispersão

# Mostra a relação entre duas variáveis
# Variável dependente x Variável independente
# Peso x Altura
# Numero de quartos x preço do imovel

# Vamos construir alguns dados

# Fixando a semente (pra sair o mesmo número e não randomico)
set.seed(24)

# gerando dados randomicos

x = rnorm(10, 8, 10)
y = rpois(10, 10)
z = rnorm(10, 6, 7)
t = rpois(10, 5)

# criando o scatterplot

plot(x, y, col='blue', pch=4, main = 'Scatterplot', col.main='blue', cex.main=1.5,
     xlab = 'Variável x', ylab = 'Variável y')


# Adicionando dados ao gráfico já consttruido

points(z, t, col = 'red', pch = 9)

# Posso acrescentar outra relação com uma variável já usada

points(y, t, col='black', pch = 10)

points(x, t, col='green', pch=7)
points(x, z, col='yellow', pch=5)
points(y, z, col='pink', pch=3)


# Com isso criamos um multi scatterplot!!

# Multiplicas relações

# Vamos adicionar uma legenda

legend(12, 16, legend = c('relação 1', 'relação 2', 'relação 3', 'relação 4', 'relação 5', 'relação 6'), col = c('blue', 'red', 'black', 'green', 'yellow', 'pink'), pch=c(4, 9, 10, 7, 5, 3), cex = 0.65, bty = 'n')
