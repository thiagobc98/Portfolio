# Introdução à Linguagem R

getwd()

# Boxplot - Gráfico de caixa
# Consigo comparar de forma gráfica algumas estatísticas

?boxplot
?sleep

sleep
View(sleep)

# Construindo o nosso boxplot

# data é onde coloca o dataset utilizado

boxplot(data = sleep, extra ~ group,
        main = 'Boxplot com dataset sleep', 
        col.main = 'red', 
        ylab = 'Horas', 
        xlab = 'Drogra')

# Notação ~ é a forma como R representa a relação entre duas variáveis

# Calculo da média

medias = by(sleep$extra, sleep$group, mean)

# Adicionando a média ao gráfico

points(medias, col='blue')

# Mudando o sentido do boxplot

boxplot(data = sleep, extra ~ group,
        main = 'Boxplot com dataset sleep', 
        col.main = 'red', 
        ylab = 'Horas', 
        xlab = 'Drogra',
        horizontal = TRUE)

# Colorindo o boxplot

boxplot(data = sleep, extra ~ group,
        main = 'Boxplot com dataset sleep', 
        col.main = 'red', 
        ylab = 'Horas', 
        xlab = 'Drogra',
        horizontal = TRUE,
        col = c('red', 'blue'))

medias = by(sleep$extra, sleep$group, mean)
points(medias, col='white')


# Note que trabalhamos camada por camada
