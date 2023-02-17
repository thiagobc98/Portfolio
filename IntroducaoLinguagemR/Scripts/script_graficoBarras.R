# Introdução à Linguagem R

getwd()

# BarPlots - Gráficos de Barras

# Gráfico de barras DIFERENTE de Histograma

# Tipo de gráfico simples e muito utilizado!

# Construindo os dados - número de frequentadores de uma loja Z

dados = matrix(c(652, 1537, 598, 242, 36, 46, 38, 21, 218, 327, 106, 67), nrow = 3, byrow = T)
dados

# Nomeando as linhas e colunas da matriz

colnames(dados) = c('0', '1-150', '151-300', '>300')
rownames(dados) = c('Jovem', 'Adulto', 'Idoso')

dados

# Construindo o gráfico de barras

barplot(dados, beside = T)
#beside - ao lado, isto é, uma barra para cada faixa

# sem o beside
barplot(dados)
#stacked bar - empilhado, cada barra contem mais de uma informação

barplot(dados, col = c('red', 'blue', 'yellow'), beside = T)
legend('topright', pch = 5, col = c('red', 'blue', 'yellow'), legend = c('Jovem', 'Adulto', 'Idoso'))

colors()

# Conseguimos inverter as posições de faixa etária e faixa de quantidade
barplot(t(dados), beside = T)
