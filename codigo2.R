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


