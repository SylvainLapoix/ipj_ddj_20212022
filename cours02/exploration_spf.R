## libs ------

library(tidyverse)

## chargement des données ----

covid_hosp <- read_csv2("./cours02/data/donnees-hospitalieres-nouveaux-covid19-2021-11-02-19h09.csv")

head(covid_hosp)

summary(covid_hosp)

table(covid_hosp$incid_dc)

## plus de réa ou de décès ? ------

select(covid_hosp, incid_rea, incid_dc) # 1. isoler les 2 variables

colSums(select(covid_hosp, incid_rea, incid_dc)) # colSums() # 2. faire la somme des valeurs par col

covid_hosp %>% 
  # 1. isoler les 2 variables
  select(incid_rea, incid_dc) %>% 
  # 2. faire la somme des valeurs par col
  colSums()
  # 3. comparer les résultats

## plus de décès en Drôme ou en Creuse ? ------

# 23 = Creuse
# 26 = Drôme

covid_hosp$dep == "23" # un test

covid_hosp %>% 
  filter(dep == "23")

covid_hosp %>% 
  filter(dep %in% c("23", "26"))

covid_hosp %>% 
  filter(dep %in% c("23", "26")) %>% 
  group_by(dep) %>% 
  summarise(total_dc = sum(incid_dc))

## comparé à la population de chaque département ? ------

# source : https://www.insee.fr/fr/statistiques/1893198

pop_dep <- readxl::read_excel("./cours02/data/estim-pop-dep-sexe-gca-1975-2021.xlsx", sheet = "2021", skip = 4) %>% 
  select(1, 8) %>% 
  setNames(c("dep","pop"))

covid_hosp %>% 
  group_by(dep) %>% 
  summarise(total_dc = sum(incid_dc)) %>% 
  left_join(pop_dep, by = c("dep" = "dep")) %>% 
  mutate(dc_pour_100k = total_dc / (pop / 100000))
