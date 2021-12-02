
## setup -----

library(tidyverse)

pos <- read_csv2("./cours02/data/sp-pos-quot-dep-2021-11-09-19h09.csv")

table(pos$dep)

## quel est le département qui a le plus de tests positifs ? ----

# ne conserver que les totaux journaliers
pos_total <- filter(pos, cl_age90 == "0")



select(pos_total, dep, jour, P)

pos %>% 
  # ne conserver que les totaux journaliers
  filter(cl_age90 == "0") %>% 
  # sélectionner les variables
  select(dep, jour, P) %>% 
  # faire la somme des tests positifs par département
  group_by(dep) %>% 
  summarise(p_total = sum(P)) %>% 
  # trier par ordre décroissant
  arrange(desc(p_total))

## quelle est la classe d'âge où le taux de positivité est le plus bas ? ----

pos %>% 
  group_by(cl_age90) %>% 
  summarise(tx_pos = sum(P) / sum(T)) %>% 
  arrange(tx_pos)
  
## quel est le mois où il y a eu le plus de test ? ------

pos %>% 
  filter(cl_age90 == "0") %>% 
  mutate(month = months(jour)) %>% 
  select(month, T) %>% 
  group_by(month) %>% 
  summarise(t_total = sum(T)) %>% 
  arrange(desc(t_total))

## quelle est la classe d'âge dans laquelle il y a le moins de tests positifs ? -----
## quelle classe d'âge se fait le plus tester ? -----

pos %>% 
  filter(cl_age90 != "0") %>% 
  group_by(cl_age90) %>% 
  summarise(t_total = sum(T)) %>% 
  arrange(desc(t_total))

