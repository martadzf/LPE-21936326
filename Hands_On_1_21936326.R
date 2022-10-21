# ID SCRIPT ---------------------------------------------------------------


## LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
## PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
## ALUMNO: MARTA DÍAZ, EXP 21936326
## HANDS ON 02
##Your 
browseURL("https://github.com/martadzf/LPE21936326")


if (!require("pacman")) install.packages(("pacman"))
pacman::p_load(pacman, magrittr, productplots, psych, RColorBrewer, tidyverse)
#pacman = load and unload
#magrittr = bidirectional piping
#productplots = grphincs and cat var
#psych = stadisticts
#RColorBrewer = painting and colour palette


# LOAD AND PREPARE DATA ---------------------------------------------------

browseURL("http://j.mp/37Wxvv7")
tipo <- happy
df <- happy %>% as_tibble() #dataframe vitaminado

#Check happy levels
levels(df$happy)
#Reverser levels
df %<>% mutate(happy = fct_rev(happy))#Magrittr


# OUTCOME VARIABLES: HAPPINESS --------------------------------------------

df %>% ggplot()+geom_bar(aes(happy, fill=happy))+
  theme(axis.title.x = element_blank(), legend.position = "none") #plot









