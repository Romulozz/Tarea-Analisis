#############      EJERCICIO 1         ############

equipoA = c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
equipoB = c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)
t.test(equipoA, equipoB,
       method="True/False")

###### Resultado
#data:  equipoA and equipoB
#t = 0, df = 18, p-value = 1
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -0.8913457  0.8913457sample estimates:
#  mean of x mean of y 
#2.3       2.3 

#RPTA: No hay diferencias significativa en el promedio de goles entre ambos equipos





#################################################################################
#################################################################################
#############      EJERCICIO 2         ############

antes = c(7, 6, 5, 6, 7)
despues = c(8, 7, 8, 8, 9)
t.test(antes, despues,
       method="True/False")

###### Resultado
# data:  antes and despues
# t = -3.6742, df = 7.7838, p-value = 0.006577
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -2.9351923 -0.6648077
# sample estimates:
#   mean of x mean of y 
# 6.2       8.0 


#RPTA: Si hay diferencias significativa 


