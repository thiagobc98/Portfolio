getwd()

# Como podemos trabalhar com textos?
# As strings são utilizadas pra isso

# criando uma string 
string = "Introdução à Linguagem R"
string

# convertendo numero em texto

x = 9
as.character(x)

# concatenando string

objeto = 'mesa'
cor = 'branca'
cat(objeto, cor)

# como imprimir?
sprintf('A %s é %s', objeto, cor)

# como extrair um pedaço da sua string?

nchar(string)

substr(string, start = 1, stop = 10)

# mudando a capitalização
toupper(string)

tolower(string)

# pacote stringr