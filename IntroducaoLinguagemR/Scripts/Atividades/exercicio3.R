
# Lista de Exercícios - Unidade 3 - Visualização de Dados em R

# Configurando o diretório de trabalho
# Essa parte é muito importante, não deixe de configurar
# Evite acentuação e espaços nos nomes das pastas
setwd('C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts')
getwd()

# Carregue o data frame iris
data("iris")

str("iris")
# Construa um histograma para a variável...
dados = iris$Sepal.Length
hist(dados)
# Construa o mesmo histograma acima, mude agora sua cor e o número de bins
hist(dados, breaks = 10, col = 'yellow')

# Construa um diagrama de dispersão para gestwks e bweight

# Inclua as legendas nos gráficos acima de acordo com o dataframe
# Você também consegue acessar o help do dataframe para entender as 
variáveis
# Altere a cor dos pontos do diagrama de dispersão criado
# Altere o formato dos pontos do diagrama de dispersão criado
# Considere a matriz abaixo.
# Crie um bar plot que represente os dados em barras individuais.
mat1 <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, 
               byrow = T)
mat1
# Usando o dataset mtcars, crie um gráfico com ggplot do tipo
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
