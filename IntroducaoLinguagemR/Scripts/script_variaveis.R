# Introdução a Linguagem R
# Variáveis
# Atribuição de variáveis

x = 19
x
y = 10
y

# Qua é a forma que yma variável é armazenada na memória? Isso influencia na performace.
mode(x)

# Utilizando as variàveis em uma função
sum(x, y)
x = y
typeof(x)

# Lista de elementos
cores = c("azul", "vermelho", "amarelo")
mode(cores)
pesos = c(2,5,10,15)
mode(pesos)

# Atribuição utilizando função
z = x + 9 
z
mode(z)

# Podemos mudar o tipo de dado? SIM

as.character(x)
mode(x)
x = as.character(x)
mode(x)

# Listar variaveis
ls()

# Remover variáveis
rm(x)

ls()
3