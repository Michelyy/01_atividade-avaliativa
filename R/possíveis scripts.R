#==============================
# Script para criação de csv
# Michely Santos Piropo
# michelypiropo.mp@gmail.com
#==============================

Scripts para funcionamento de programas como o tidyverse, e leitura de arquivos.
(Michely Santos Piropo, michelypiropo.mp@gmail.com)
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
library(readr)
frango_dieta <- read_csv("dados/brutos/frango_dieta.csv")
View(frango_dieta)
dados_co2 <- read_csv("dados/brutos/dados_co2.csv")
View(dados_co2)
library(readr)
library(readr)
tabela_1 <- read_csv("dados/brutos/tabela_1.csv",
                     col_types = cols(altura = col_number(),
                                      peso = col_number()))
View(tabela_1)
library(readr)
library(readr)
library(readr)
dados_co2 <- read.csv("dados/brutos/dados_co2.csv")

dados_co2 %>% View()
library(readr)
dados_co2_tidy <- read_csv("dados/tidy/dados_co2_tidy.csv")
View(dados_co2_tidy)

dados_co2 <- read.csv("dados/brutos/dados_co2.csv")

dados_co2 %>% View()
co2_tidy <-  read_csv("dados/brutos/dados_co2.csv")
View(co2_tidy)

co2_tidy %>% glimpse()

```

Criação da tabela dados_co2 com as variaveis ano, mes e ppm.
(Michely Santos Piropo, michelypiropo.mp@gmail.com)
```{r setup, include=FALSE}
dados_co2 %>%
  pivot_longer(
    !ano,
    names_to = "mes",
    values_to = "ppm"
  )

```
Conexão do arquivo dados_co2, para um novo arquivo dados_co2_tidy
(Michely Santos Piropo, michelypiropo.mp@gmail.com)
```{r setup, include=FALSE}
dados_co2_tidy <- dados_co2 %>%
  pivot_longer(
    !ano,
    names_to = "mes",
    values_to = "ppm"
  )

```
Criação do documento dados_co2_tidy
(Michely Santos Piropo, michelypiropo.mp@gmail.com)
```{r setup, include=FALSE}

write.csv(dados_co2_tidy,"dados/brutos/dados_co2.csv")

```





