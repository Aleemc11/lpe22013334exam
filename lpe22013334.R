# Parte Práctica LPE Alejandra Montes de Oca Calero - 22013334
# Fecha 14 oct 2022
install.packages (c("tidyverse", "httr","janitor"))
library(pacman);pacman::p_load(tidyverse,httr,janitor)

# Importamos el dataset con el nombre deseado
library(readr)
catastro_sample <- read_csv("lpe22013334/lpe22013334exam/catastro-sample.csv")
View(catastro_sample)

# 4.Limpiar el dataset: 

janitor::clean_names(catastro_sample)%>%glimpse() 
locale()
catastro <-catastro_sample %>% janitor::clean_names()%>% type_convert(locale = locale(decimal_mark = ','))


# 5

#df_low <- df_final%>%mutate(expensive = !rotulo %in% c("CEPSA", "REPSOL", "BP", "SHELL")) # ! para encontrar las baratas (lo contrario a las caras)

## Cual precio medio de gasoleo en las CCAA
#df_low %>% select(precio_gasoleo_a, idccaa, rotulo, expensive) %>% drop_na() %>% group_by(idccaa, expensive) %>% summarise(mean(precio_gasoleo_a)) %>% view()
#df_low %>% glimpse()


write.csv(catastro,"C:\\Users\\aleemc11\\lpe22013334\\lpe22013334exam\\catastro.csv", row.names = FALSE)




