{r, message = FALSE}
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
media1.1 = mean(df.adelie$bill_length_mm, na.rm = TRUE)
sd1.1 = sd(df.adelie$bill_length_mm, na.rm = TRUE)
mediana1.1 = median(df.adelie$bill_length_mm, na.rm = TRUE)

#Chinstrap
media2.1 = mean(df.chinstrap$bill_length_mm, na.rm = TRUE)
sd2.1 = sd(df.chinstrap$bill_length_mm, na.rm = TRUE)
mediana2.1 = median(df.chinstrap$bill_length_mm, na.rm = TRUE)

#Gentoo
media3.1 = mean(df.gentoo$bill_length_mm, na.rm = TRUE)
sd3.1 = sd(df.gentoo$bill_length_mm, na.rm = TRUE)
mediana3.1 = median(df.gentoo$bill_length_mm, na.rm = TRUE)

boxplot(df$bill_length_mm~df$species,xlab="Especie",ylab="longitud pico (mm)",main="longitud de pico por especie")

#profundidad pico:
#Adeline
media1.2 = mean(df.adelie$bill_depth_mm, na.rm = TRUE)
sd1.2=sd(df.adelie$bill_depth_mm, na.rm = TRUE)
mediana1.2=median(df.adelie$bill_depth_mm, na.rm = TRUE)

#Chinstrap
media2.2=mean(df.chinstrap$bill_depth_mm, na.rm = TRUE)
sd2.2=sd(df.chinstrap$bill_depth_mm, na.rm = TRUE)
mediana2.2=median(df.chinstrap$bill_depth_mm, na.rm = TRUE)

#Gentoo
media3.2=mean(df.gentoo$bill_depth_mm, na.rm = TRUE)
sd3.2= sd(df.gentoo$bill_depth_mm, na.rm = TRUE)
mediana3.2=median(df.gentoo$bill_depth_mm, na.rm = TRUE)

boxplot(df$bill_depth_mm~df$species,xlab="Especie",ylab="Profundidad pico (mm)",
        main="Profundidad de pico por especie")

#longitud de aletas:
#Adeline
media1.3=mean(df.adelie$flipper_length_mm, na.rm = TRUE)
sd1.3=sd(df.adelie$flipper_length_mm, na.rm = TRUE)
mediana1.3=median(df.adelie$flipper_length_mm, na.rm = TRUE)

#Chinstrap
media2.3=mean(df.chinstrap$flipper_length_mm, na.rm = TRUE)
sd2.3=sd(df.chinstrap$flipper_length_mm, na.rm = TRUE)
mediana2.3=median(df.chinstrap$flipper_length_mm, na.rm = TRUE)

#Gentoo
media3.3=mean(df.gentoo$flipper_length_mm, na.rm = TRUE)
sd3.3=sd(df.gentoo$flipper_length_mm, na.rm = TRUE)
mediana3.3=median(df.gentoo$flipper_length_mm, na.rm = TRUE)

boxplot(df$flipper_length_mm~df$species,xlab="Especie",ylab="Longitud aletas (mm)",
        main="Longitud de aletas por especie")
#peso
#Adeline
media1.4=mean(df.adelie$body_mass_g, na.rm = TRUE)
sd1.4=sd(df.adelie$body_mass_g, na.rm = TRUE)
mediana1.4= median(df.adelie$body_mass_g, na.rm = TRUE)

#Chinstrap
media2.4=mean(df.chinstrap$body_mass_g, na.rm = TRUE)
sd2.4=sd(df.chinstrap$body_mass_g, na.rm = TRUE)
mediana2.4=median(df.chinstrap$body_mass_g, na.rm = TRUE)

#Gentoo
media3.4=mean(df.gentoo$body_mass_g, na.rm = TRUE)
sd3.4= sd(df.gentoo$body_mass_g, na.rm = TRUE)
mediana3.4=median(df.gentoo$body_mass_g, na.rm = TRUE)


boxplot(df$body_mass_g~df$species,xlab="Especie",ylab="peso (g)",
        main="Peso por especie")

tab <- matrix(c(media1.1,media2.1,media3.1,mediana1.1,mediana2.1,mediana3.1,sd1.1,sd2.1,sd3.1,media1.2,media2.2,media3.2,mediana1.2,mediana2.2,mediana3.2,sd1.2,sd2.2,sd3.2, media1.3,media2.3,media3.3,mediana1.3,mediana2.3,mediana3.3,sd1.3,sd2.3,sd3.3, media1.4,media2.4,media3.4,mediana1.4,mediana2.4,mediana3.4,sd1.4,sd2.4,sd3.4), ncol=3 , byrow=TRUE)

rownames(tab) <- c('Media longitud pico en mm:', 'Mediana longitud pico en mm:','Desviación típica longitud pico en mm:', 'Media profundidad pico en mm:', 'Mediana profundidad pico en mm:','Desviación típica profundidad pico en mm:','Media longitud aletas en mm:', 'Mediana longitud aletas en mm:','Desviación típica longitud aletas en mm:','Media peso en g:', 'Mediana peso en g:','Desviación típica peso en g:')

colnames(tab) <- c('Adelie', 'Chinstrap', 'Gentoo')
tab <- as.table(tab)
tab