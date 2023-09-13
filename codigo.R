# Cargamos las librerías requeridas
library("tidyverse")
library("palmerpenguins")
# Copiamos el dataframe sobre el cual vamos a trabajar
df = penguins

df.adelie = df[df$species=="Adelie",]
df.chinstrap = df[df$species=="Chinstrap",]
df.gentoo = df[df$species=="Gentoo",]

df2 = df[,c(1,2)]
plot(df2)
