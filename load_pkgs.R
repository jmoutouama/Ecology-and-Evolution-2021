pkgs <- c("geosphere","raster","rgl","ellipse",
          "oce","sf","tmap",
          "ntbox","maptools","MASS","rgdal","parallel",
          "leaflet","htmlwidgets","prettydoc","mice",
          "reshape2","dplyr","ggplot2","tidyr","corrplot",
          "ggplot2","knitr","kableExtra","lme4","nlme","glmm",
         "stringr","ggpubr","piecewiseSEM","lme4","nlme",
          "visreg","MASS","rio","nat","factoextra",
          "devtools","future","RColorBrewer","AICcmodavg",
          "FactoMineR","lsmeans","dismo",
          "rmapshaper","leafsync","agricolae","stringr")
to_install <- pkgs[!pkgs %in% installed.packages()]
if(length(to_install)>0L) 
  install.packages(to_install,
                   repos = "http://cran.rstudio.com")
sapply(pkgs,function(x) library(x,character.only = T))

# GitHub package with functions to estimate n-dimensional ellipsoids
if(!require("hsi"))
  devtools::install_github("luismurao/hsi")
if(!require("mapview"))
  devtools::install_github("environmentalinformatics-marburg/mapview", ref = "develop")

# NichetoolBox package; it has the a function for selecting ellisposoid models 

if(!require("ntbox"))
  devtools::install_github('luismurao/ntbox')
