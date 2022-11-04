# ID SCRIPT ---------------------------------------------------------------


## LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
## PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
## ALUMNO: MARTA DÍAZ, EXP 21936326
## PRÁCTICA CLASE 04/11/221


# LOADING LIBS ------------------------------------------------------------

if(!require("pacman")) install.packages("pacman")
p_load(tidyverse, magrittr, janitor, lubridate, tidyr, jsonlite, httr)

# LOADING DATA ------------------------------------------------------------

url_ <- "https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/"

f_raw <- jsonlite::fromJSON(url_)
df_source <- f_raw$ListaEESSPrecio %>% glimpse()
janitor::clean_names(df_source) %>% glimpse()

#ver config
locale() 
#Cambaimos config
df1<-df_source %>% janitor::clean_names() %>% type_convert(locale = locale(decimal_mark = ","))

# CREATING NEW COLUMN ------------------------------------------------------------