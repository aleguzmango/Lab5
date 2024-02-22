install.packages("tidyverse")
install.packages("reader")
install.packages("readr")
library(tidyverse)
library(readr)
library(readr)
tabla1 <- read_csv("Documents/DOCTORADO/3er. semestre/Temas selectos I Estadística para las Ciencias Económico Administrativas/Labs/Lab5.csv")
View(Lab5)
names(tabla1)
# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("Ks,0"   ,   "Ks,2"   ,   "Ks,4"   ,   "Ks,6"   ,   "Ks,8"    ,  "Ks,10"  ,   "Ks,12"  ,   "Ks,14"  ,   "Ks,16"  ,   "Ks,18"   ,  "Ks,20"  ,   "Ks,22" , "Ks,24"  ,   "Ks,26" ), names_to = "iteracion", values_to = "ranking")
# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "Lab5_CHARTICULATOR.csv")
getwd()
setwd("C:/Users/karit/Desktop")