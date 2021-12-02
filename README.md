# IPJ Dauphine : master 2 - option datajournalisme

![](https://www.ipj.eu/wp-content/uploads/2019/03/Logo-IPJ-2019.png)

Ce cours se déroule dans le cadre du master journalisme de l'[Institut Pratique de Journalisme - Paris Dauphine](https://www.ipj.eu/).

## Formateur
* Sylvain Lapoix ([#DATAGUEULE](https://www.youtube.com/user/datagueule) + [Datactivist](https://datactivist.coop/))

-----


## Support

* Cours01 : [R, votre nouvel outil](https://sylvainlapoix.github.io/ipj_ddj_20212022/cours01/#1)
* Cours02 : [Base du traitement de données en R](https://sylvainlapoix.github.io/ipj_ddj_20212022/cours02/#1)

## Scripts

* exploration des fichiers Santé Publique France : [exploration_spf_test.R](https://github.com/SylvainLapoix/ipj_ddj_20212022/blob/main/cours02/exploration_spf.R)

------

## Installation

**Attention** : les installations doivent être réalisées dans cet ordre, au risque que les programmes ne fonctionnent pas correctement.

### Windows
1. [dernière version disponible de R base](https://cran.r-project.org/bin/windows/base/) ;
2. [dernière version disponible de Rstudio](https://rstudio.com/products/rstudio/download/#download)
3. [Sublime Text 3](https://www.sublimetext.com/3)

### Mac
1. [dernière version disponible de R base](https://cran.r-project.org/bin/macosx/)
2. [dernière version disponible de Rstudio](https://rstudio.com/products/rstudio/download/#download)
3. [Sublime Text 3](https://www.sublimetext.com/3)

Veillez à installer également XCode et `{fansi}` comme expliqué  [ici](https://community.rstudio.com/t/problems-installing-packages-error-non-zero-exit-status-and-unknown-time-zone/73237/2) pour éviter les problème de timezone avec `{lubridate}` et les fonctions `date` en général.


### Linux

Pré-requis :
```
sudo apt install libcurl4-openssl-dev
sudo apt install libxml2-dev
```


### Packages R
* {tidyverse} ;
* {data.table} ;
* {devtools} ;
* {rvest} ;
* {lubridate} ;
* {viridis} ;
* {RColorBrewer}.

-----

## Références

### Généralités sur R
* [R for datascience](https://r4ds.had.co.nz/) ;
* [Introduction à R et au tidyverse](https://juba.github.io/tidyverse/) ;
* les raccourcis claviers de Rstudio : [Keyboard shortcuts, Rstudio](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts) ;
* quelques "feuilles de triches" des packages R (notamment tidyverse) : [Rstudio Cheat Sheets, Rstudio](https://rstudio.com/resources/cheatsheets/).

### Sur la gestion des fichiers
* créer un projet sous R, organiser ses fichiers ... [dans la très bonne introduction du parcours de formation à R du Ministère de la Transition énergétique et solidaire ](https://mtes-mct.github.io/parcours-r/m2/bien-commencer.html) ;
* [le chapitre Organiser ses fichiers](http://larmarange.github.io/analyse-R/organiser-ses-fichiers.html) du tutoriel en ligne Analyse-R créé et maintenu par Joseph Larmarange ;
* [Organiser ses scripts](https://juba.github.io/tidyverse/05-organiser.html) dans l'Introduction à R et au tidyverse de Julien Barnier, référence en langue française s'il en est.

### Sur le scraping
* [la cheatsheet xPath de Devhints](https://devhints.io/xpath), très complète et didactique.

### Sur les regex
* [Strings - Maching patterns with regular expressions in R for data science](https://r4ds.had.co.nz/strings.html), Hadley Wickham ;
* [les regex avec StringR](https://stringr.tidyverse.org/articles/regular-expressions.html), documentation {tidyverse}.

### Sur ggplot2
* [le site officiel de la librairie](https://ggplot2.tidyverse.org/reference/), sur le portail du {tidyverse}.