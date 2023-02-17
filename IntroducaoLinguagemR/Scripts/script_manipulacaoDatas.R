# Introdução à Linguagem R

# Datas

# Manipulação de datas em R
# É bem comum que você tenha que trabalhar com datas

hoje = Sys.Date()
hoje
class(hoje)
hoje_hora = Sys.time()
hoje_hora
class(hoje_hora)
Sys.timezone()

# Data - Novo tipo de dado Date
# Internamente é armazenado como numero de dias desde 01/01/1970
# Time -  novo tipo de dado POSIXct
# Numero de segundos

# Formatação das datas
# %d: dia do mês em dois digitos
# %m: mes em dois digitos
# %y: ano em dois digitos
# %Y: ano em quatro digitos
# %A: dia da semana
# %a: dia da semana abreviado
# %B: mes
# %b: mes abreviado

# Formatação de horas
# %H: Hora
# %M: minuto
# %S: segundo
# %T: formato reduzido para %H:%M:%S

?strptime()

# Fazendo alguns testes

dia = as.Date('2021-01-05')
dia
class(dia)
dia2 = as.Date('2023-01-09', format= '%Y-%m-%d')
dia2

# operacoes com datas

data = as.Date('2023-01-09', format= '%Y-%m-%d')
data + 1


