# Cargamos las librerías requeridas
library("tidyverse")
library("palmerpenguins")
# Copiamos el dataframe sobre el cual vamos a trabajar
df = penguins
# Guardamos dataframes por cada especie para más tarde
df.adelie = df[df$species=="Adelie",]
df.chinstrap = df[df$species=="Chinstrap",]
df.gentoo = df[df$species=="Gentoo",]
# Analizamos las islas por especie
table(df$species,df$island)
barplot(table(df$species,df$island), legend.text = TRUE, args.legend=list(x="topright", cex=0.75))
# Analizamos las especies por sexo
table(df$sex, df$species)
barplot(table(df$sex, df$species), legend.text = TRUE, args.legend=list(x="topright", cex=0.75))
# Analizamos las especies por año
table(df$year, df$species)
barplot(table(df$year, df$species), legend.text = TRUE, args.legend=list(x="topright", cex=0.75))
