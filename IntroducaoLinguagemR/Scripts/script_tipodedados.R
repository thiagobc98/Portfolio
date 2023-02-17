# Introdução à Linguagem R
# Tipos de dados


# Configurando o diretório
setwd("C:/Users/Thiago/Desktop/PosGraduacaoPUC/IntroducaoLinguagemR/Scripts")
getwd()

x = 1
x

y <- 2
y

# Verificando a classe (modo de armazenamento)

class(x)

# Verificando o mode 
mode(x)

# verificando o typeof (informação importante para manipulação)
typeof(x)

#Por padrão R cria a variável numeric e double

# e se eu quiser que x seja inteiro?
# podemos antes conferir;
is.integer(x)

#então, vamos transformá-lo em inteiro:
z = as.integer(x)
class(z)

# outro exemplo:

w = 3.25
class(w)
w = as.integer(w)
class(w)


# E se eu quiser converter uma string?

cor = 'vermelho'
typeof(cor)
as.integer(cor)

nota = '7.18'
as.integer(nota)
bool = FALSE

# Character - string - texto

string1 = 'texto'
mode(string1)
typeof(string1)


string2 = c('A', 'B', 'C', 'D')

# Lógica

u = 8
v = 9
z = u > v
z

# Complexa

complexa = 2 + 2i
mode(complexa)
typeof(complexa)
