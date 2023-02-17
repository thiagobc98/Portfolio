# Pie Charts - Gráfico de Pizza 

# Use com moderação!

# Construindo os dados 

fatias = c(10, 30, 60)
labels_fatias = c('coelho', 'gato', 'cachorro')

dados = paste(fatias, labels_fatias)

# Colocando em formato de porcentagem

dados = paste(fatias, '%', sep='')
dados = paste(dados, labels_fatias)

# Construindo um gráfico de pizza

pie(fatias, labels = dados,
    col = c('darksalmon', 'gainsboro', 'lemonchiffon4'),
    main = 'Distribuição de pets')


# Utilizando um dataframe built in

attach(iris)
values = table(Species)
values
labels = paste(names(values))
labels

pie(values, labels = labels, main = 'Distribuição de Espécies')

# Gráfico de barras 3D

install.packages('plotrix')

library(plotrix)

pie3D(fatias, labels = dados, explode = 0.05, main = 'Distribuição de pets')
