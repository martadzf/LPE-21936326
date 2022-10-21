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
df <- happy %>% as_tibble()
