# Normalizar las variables independientes
diabetes$Embarazos = scale(diabetes$Pregnancies)
diabetes$Glucosa = scale(diabetes$Glucose)
diabetes$Presion = scale(diabetes$BloodPressure)
diabetes$GrosorPiel = scale(diabetes$SkinThickness)
diabetes$Insulina = scale(diabetes$Insulin)
diabetes$IMC = scale(diabetes$BMI)
diabetes$HistorialFamiliar = scale(diabetes$DiabetesPedigreeFunction)
diabetes$Edad = scale(diabetes$Age)

# Entrenar red neuronal con las variables escaladas
modelo_nn = nnet(
  Outcome ~ Embarazos + Glucosa + Presion + GrosorPiel + Insulina + IMC + HistorialFamiliar + Edad,
  data = diabetes,
  size = 9,
  maxit = 500,
  decay = 0.01,
  linout = FALSE
)

# Mostrar detalles del modelo entrenado
print(modelo_nn)

# Obtener probabilidades predichas
probabilidades = predict(modelo_nn, diabetes, type = "raw")
print(probabilidades)

# Convertir probabilidades en etiquetas binarias
etiquetas_predichas = ifelse(probabilidades > 0.5, 1, 0)

# Calcular las métricas manualmente
vn = sum(etiquetas_predichas == 0 & diabetes$Outcome == 0)
vp = sum(etiquetas_predichas == 1 & diabetes$Outcome == 1)
fp = sum(etiquetas_predichas == 1 & diabetes$Outcome == 0)
fn = sum(etiquetas_predichas == 0 & diabetes$Outcome == 1)

# Crear una tabla de resultados tipo matriz de confusión
matriz_confusion = data.frame(
  Categoria_Predicha = c("Clase 0", "Clase 1"),
  Real_0 = c(vn, fp),
  Real_1 = c(fn, vp)
)

print(matriz_confusion)
