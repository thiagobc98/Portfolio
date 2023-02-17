# ggplot2
# Criando gráficos visualmente mais profissionais 

# Sistema gráfico completo, alternativo ao sistema básico de gráficos
# do R. Muito mais poderoso que o sistema básico de plotagem. Com isso
# o nível de complexidade é um pouco maior. 
# Mais opções de modificação, legendas prontas e formatação mais sólida

# Uma folha de cola =)
# https://www.maths.usyd.edu.au/u/UG/SM/STAT3022/r/current/Misc/data-visualization-2.1.pdf

# Uma dica: aprenda e entenda!

install.packages('ggplot2')
library(ggplot2)

# Carregando uma massa de dados built in
data(tips, package = 'reshape2')

# criando um gráfico basico

qplot(total_bill, tip, data=tips, geom='points')

# Camada 1

camada1 = geom_point(
  mapping = aes(x = total_bill, y=tip, color=sex),
  data = tips,
  size = 3
)

ggplot() + camada1


# Construindo um modelo de regressão

modelo_base = lm(tip~total_bill, data=tips)
modelo_fit = data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval = 'confidence')
)

head(modelo_fit)

# Camada 2

camada2 = geom_line(
  mapping = aes(x = total_bill, y = fit),
  data = modelo_fit,
  color = 'darkred'
)

ggplot() + camada1 + camada2

# Camada 3 
camada3 = geom_ribbon(
  mapping = aes(x = total_bill, ymin=lwr, ymax=upr), 
  data = modelo_fit,
  alpha = 0.3
)


ggplot() + camada1 + camada2 + camada3
