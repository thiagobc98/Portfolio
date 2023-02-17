
# Lista de Exercícios - Unidade 4 - Manipulação de Dados em R
# Configurando o diretório de trabalho
# Essa parte é muito importante, não deixe de configurar
# Evite acentuação e espaços nos nomes das pastas
getwd()
# Carregue o arquivo input.csv em anexo e então responda às seguintes 
input_df = read.csv('input.csv')
View(input_df)
#perguntas:

  # Pergunta 1 - Quantas linhas e quantas colunas tem o objeto resultante em 
  # R?
dim(input_df)

  # Pergunta 2 - Qual o maior salário?
maior_salario = max(input_df$salary)
maior_salario

  # Pergunta 3 - Imprima no console o registro da pessoa com o maior 
  # salário.
filter(input_df, salary == maior_salario)

# Pergunta 4 - Imprima no console todas as pessoas que trabalham no 
# departamento de IT.
filter(input_df, dept == 'IT')

# Pergunta 5 - Imprima no console as pessoas do departamento de IT com 
#salário superior a 600.
input_df %>%
  select(name, dept, salary) %>%
  filter(dept == 'IT') %>%
  filter(salary > 600)

# Carregue o dataframe iris e resolva utilizando dplyr as seguintes 
#questões
# Selecione as três primeiras colunas do dataset usando o nome delas
# Selecione todas as colunas do dataset exceto 'Petal Width'
# Filtre as linhas com Sepal.Length >= 4.6
# Filtre as linhas com Petal.Width >= 0.5
# Filtre as linhas com Sepal.Length >= 4.6 e Petal.Width >= 0.5
# Ordene o data de acordo com a coluna Sepal.Length
# Crie uma nova coluna resultado da divisão de Sepal.Length e Sepal.Width
