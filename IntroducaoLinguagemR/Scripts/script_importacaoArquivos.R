getwd()

# Importação de arquivos em R

# Principais pacotes
# Utils - carregado com a base do R
?readr
# data.table

# Arquivos texto

# Usando as funções do pacote base do R (utils)
search()

# Importando arquivo com read.table()

df1 = read.table('alunos.csv')
df1
dim(df1)

df1 = read.table('alunos.csv', header = TRUE, sep = ',')
df1
dim(df1)

df1 = read.table('alunos.csv', header = TRUE, sep = ',', col.names = c('Nome', 'Peso', 'Altura'))
df1


df1 = read.table('alunos.csv', header = TRUE, sep = ',', col.names = c('Nome', 'Peso', 'Altura'), na.strings = c('Aline', 'Marco'))
df1
str(df1)

df1 = read.table('alunos.csv', header = TRUE, sep = ',', col.names = c('Nome', 'Peso', 'Altura'), stringsAsFactors = FALSE)
df1


# Importando arquivo com o read.csv()

df2 = read.csv('alunos.csv')
df2
dim(df2)


df3 = read.csv2('alunos.csv')
df3
dim(df3)

df3 = read.csv2('alunos.csv', sep = ',')
df3
dim(df3)


# Importando arquivo com read.delim()

df4 = read.delim('alunos.csv')
df4

df4 = read.delim('alunos.csv', sep = ',')
df4

# Gravando arquivos txt

write.table(mtcars, file = 'mtcars.txt')
dir()

df_mtcars = read.table('mtcars.txt')
df_mtcars

install.packages('readr')
library(readr)

arquivo = read.csv(file.choose())
arquivo

# Exportando o arquivo

write_csv(iris, 'iris.csv')
dir()

