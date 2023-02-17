# Introdução à Linguagem R

# Estrura de controle

getwd()

#Permitem estabelecer uma estrutura no seu código

# Estrutura condicional

# If-else

x = 5
if(x < 10){
  'Este número é menor que 10'
}

y = 15
if(y < 10){
  'Este número é menor que 10'
} else {
  'Este número não é menor que 10'
}

# Aninhar comando

z = 15
if(z < 10){
  'Este número é menor que 10'
  } else if(z == 5){
    'Este número é igual a 5'
  } else {
    'Este número não é menor que 10, e nem igual a 5'
  }

v = 5
ifelse(v <6, 'correto', 'incorreto')

# Estrutura de repetição

# Rep

rep(10, 3)
rep(22, 50)

# Repeat

s = 1
repeat{
  s = s + 1
  if(s > 20){
    break
  }
}
s

# Loop for
for(i in 1:10){
  print(i)
}


# Loop While

t = 5
while(t < 10){
  t = t + 1
  print(t)
}

# O que acontece nesse loop while se t = 14

t = 14
while(t < 10){
  t = t + 1
  print(t)
}
# Ele não percorre o loop
