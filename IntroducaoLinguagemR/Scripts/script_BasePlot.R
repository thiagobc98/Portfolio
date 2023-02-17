# Introdução à Linguagem R

setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()


# Gráficos com Base Plotting System em R

# Lista de pacotes base carregados

search()

# demonstracao
demo(graphics)


# Vamos começar a plotar

x = 1:10
y = 11:20

plot(x, y)


# Vamos dar sentindo ao gráfico

peso = c(65, 78, 96, 54, 68)
altura = c(165, 170, 180, 168, 155)

plot(peso, altura)

# Utilizando um data frame built in do R

?lynx

lynx

plot(lynx)

# Vamos montar as camadas

plot(lynx, ylab='plot com legenda y')
plot(lynx, ylab='plot com legenda y', xlab='plot com legenda x')
plot(lynx, main='plot com tiulo e cor', col='blue')

library(datasets)
hist(warpbreaks$breaks)


# Parâmetros
# col - cor do plot
# lty - tipo de linha
# lwd - largura da linha
# pch - símbolo no plot
# xlab - label do eixo x
# ylab - label do eixo y
# las - como os labels dos eixos são orientados
# bg - background color
# mfrow - número de plots pode linha
# mfcool - número de plots por coluna

# funções basicas de plot

# plot() - scatterplot
# lines() - adiciona linhas ao gráfico
# points() - adiciona pontos ao gráfico
# text() - adiciona label ao gráfico
# title() - adiciona título ao gráfico

# exemplo

plot(peso, altura, pch = 3)

par(mfrow = c(1,2))
plot(x, y)
plot(peso, altura)

par(mfrow = c(1,1))

?par


# Salvando um gráfico

# png
png('grafico_png', width = 500, height = 500, res = 72)
plot(peso, altura)
dev.off()


# pdf
pdf('grafico_pdf')
plot(peso, altura)
dev.off()

# voce pode verificar as cores disponiveis
colors()
