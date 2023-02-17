# Introdução à linguagem R

# Expressões regulares em R

# Expressão regular é um padrão
# Você determina um padrão e busca ele dentro de um texto

# grep()
# grepl()
# sub()
# gsub()
# regexpr()
# gregexpr()

str = c('Nessa unidade', 'sobre estruturas de controles', 'e funcoes', 'trouxe para voce',
        'um pouco sobre', 'expressões', 'regulares', 'para aprendermos a ', 'buscar padrões')
length(str)
str

# grep() - há alguma palavra ou expressão que tenha o padrão 'ex'

grep('ex', str, value = F)

# se quiser trazer o elemento
grep('es', str, value = T)


# grepl() - Modificação de grep - true or false
grepl('es', str)


# gsub() - substituir o padrão

gsub('para', 'pra', str)

# sub() - variação
sub('para', 'PARA', str)

# regexpr()
?regexpr

# Identifica onde um padrão está dentro de um vetor de caracteres 

regexpr('ex', str, ignore.case = FALSE)

# gregexpr() - Mesma coisa do REGEXPR, só que retorna uma lista

gregexpr('ex', str, ignore.case = FALSE)
