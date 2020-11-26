
#A continuación realizaremos una regresión con múltiples variables para observar el efecto de estas sobre el PIBpc
#Para ello hemos cargado la nueva base de datos con sus múltiples variables.
View(Base_de_datos)
summary(Base_de_datos)

#Eliminamos los valores ausentes de la base de datos
na.omit(Base_de_datos)

#Y realizamos un nuevo modelo de regresion con algunas de las variables (esta vez usaremos la inversión directa extranjera, 
# el porcentaje de empleados del país y el crecimiento del coste laboral) y poniendo el PIB como variable dependiente
Regresion<-lm(Base_de_datos$PIBpc~Base_de_datos$`Crecimiento del coste laboral`+Base_de_datos$`Porcentaje de la población con empleo`+Base_de_datos$`Inversión directa extranjera`)
summary(Regresion)

#Vemos que el crecimiento del coste laboral tiene un efecto negativo sobre el PIBpc aunque no es estadísticamente, igual que el porcentaje de la población, que tampoco es significativo, pero un aumento en este aumenta el PIBpc. Si observamos el efecto de la inversión extranjera directa, esta tiene un efecto positivo y estadísticamente significativo en el PIBpc.