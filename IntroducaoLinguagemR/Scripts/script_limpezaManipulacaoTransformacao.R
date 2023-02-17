# Limpeza, Transformação e Manipulação de Dados em R

# Instalando  e carregando os pacotes necessários

install.packages('dplyr')
install.packages('tidyr')

library(dplyr)
library(tidyr)
library(readr)

# Carregando o dataset

sono_df = read.csv('sono.csv')
View(sono_df)
head(sono_df)
class(sono_df)
str(sono_df)


# Função glimpse() pode ser usada no lugar da função str()

glimpse(sono_df)


# Aplicando MUTATE

glimpse(mutate(sono_df, peso_libras=sono_total/0.45359237))

# Contagem e histograma

count(sono_df, cidade)

hist(sono_df$sono_total)

# Amostragem

sample_n(sono_df, size = 10)


# select()

sleepData = select(sono_df, nome, sono_total)
head(sleepData)
class(sleepData)
select(sono_df, nome)
select(sono_df, nome:pais)

# filter()

filter(sono_df, sono_total >= 16)
sono_df %>% filter(sono_total >= 16)
filter(sono_df, sono_total >= 16, peso >= 80)
filter(sono_df, cidade %in% c('Recife', 'Curitiba'))

# arrange()

sono_df %>% arrange(cidade) %>% head

sono_df %>% 
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  head

sono_df %>% 
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  filter(sono_total) >= 16

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, desc(sono_total)) %>%
  filter(sono_total >= 16)

# Mutate()

sono_df %>%
  mutate(novo_indice = sono_total/peso) %>%
  head
head(sono_df)

sono_df %>%
  mutate(novo_indice = sono_total/peso,
         peso_libras = peso/0.45359237) %>%
  head

# summarize()

sono_df %>%
  summarise(media_sono = mean(sono_total))

sono_df %>%
  summarise(media_sono = mean(sono_total), 
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

# Group by()

sono_df %>%
  group_by(cidade) %>%
  summarize(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())
