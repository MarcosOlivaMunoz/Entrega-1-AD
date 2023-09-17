# Cargamos las librerías requeridas
library("tidyverse")
library("palmerpenguins")
# Copiamos el dataframe sobre el cual vamos a trabajar
df = penguins

df.adelie = df[df$species=="Adelie",]
df.chinstrap = df[df$species=="Chinstrap",]
df.gentoo = df[df$species=="Gentoo",]

#longitud pico:
#Adeline
mean(df.adelie$bill_length_mm, na.rm = TRUE)
sd(df.adelie$bill_length_mm, na.rm = TRUE)

#Chinstrap
mean(df.chinstrap$bill_length_mm, na.rm = TRUE)
sd(df.chinstrap$bill_length_mm, na.rm = TRUE)

#Gentoo
mean(df.gentoo$bill_length_mm, na.rm = TRUE)
sd(df.gentoo$bill_length_mm, na.rm = TRUE)

boxplot(df$bill_length_mm~df$species,xlab="Especie",ylab="longitud pico (mm)",
        main="longitud de pico por especie")

#profundidad pico:
#Adeline
mean(df.adelie$bill_depth_mm, na.rm = TRUE)
sd(df.adelie$bill_depth_mm, na.rm = TRUE)

#Chinstrap
mean(df.chinstrap$bill_depth_mm, na.rm = TRUE)
sd(df.chinstrap$bill_depth_mm, na.rm = TRUE)

#Gentoo
mean(df.gentoo$bill_depth_mm, na.rm = TRUE)
sd(df.gentoo$bill_depth_mm, na.rm = TRUE)

boxplot(df$bill_depth_mm~df$species,xlab="Especie",ylab="Profundidad pico (mm)",
        main="Profundidad de pico por especie")

#longitud de aletas:
#Adeline
mean(df.adelie$bill_depth_mm, na.rm = TRUE)
sd(df.adelie$bill_depth_mm, na.rm = TRUE)

#Chinstrap
mean(df.chinstrap$bill_depth_mm, na.rm = TRUE)
sd(df.chinstrap$bill_depth_mm, na.rm = TRUE)

#Gentoo
mean(df.gentoo$bill_depth_mm, na.rm = TRUE)
sd(df.gentoo$bill_depth_mm, na.rm = TRUE)

boxplot(df$flipper_length_mm~df$species,xlab="Especie",ylab="Longitud aletas (mm)",
        main="Longitud de aletas por especie")

#peso
#Adeline
mean(df.adelie$body_mass_g, na.rm = TRUE)
sd(df.adelie$body_mass_g, na.rm = TRUE)

#Chinstrap
mean(df.chinstrap$body_mass_g, na.rm = TRUE)
sd(df.chinstrap$body_mass_g, na.rm = TRUE)

#Gentoo
mean(df.gentoo$body_mass_g, na.rm = TRUE)
sd(df.gentoo$body_mass_g, na.rm = TRUE)
boxplot(df$body_mass_g~df$species,xlab="Especie",ylab="peso (g)",
        main="Peso por especie")


