library(readxl)
Base_datos<- DP_LIVE_21112020115545549
head(Base_de_datos)
summary (Base_de_datos)

#Modelo lineal simple
modelolineal<-lm(Base_de_datos$PIBpc~Base_de_datos$`Crecimiento en inversión`)
summary(modelolineal)

#Interpretaci?n
#Un punto porcentual mas en el crecimiento en inversion aumenta el PIBpc, en media, en 392 dolares. 
#El p-valor es bastante correcto, siendo proximo a 0,05 pero no lo es la capacidad explicativa del modelo.

#Nuevo modelo lineal simple
modelolineal2<-lm(Base_de_datos$`Crecimiento del PIB`~Base_de_datos$`Crecimiento en inversión`)
summary(modelolineal2)
#En este nuevo modelo se aprecia que un punto porcentual mas en el crecimiento de la inversión,
#aumenta el crecimiento del PIB, en media, en 0,04 puntos porcentuales.
#Tanto el pvalor, que ahora es m?s próximo a 0, como la capacidad explicativa, han mejorado notablemente.