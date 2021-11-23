## ----setup, include=FALSE-----------------------------------------------------
library(knitr)

opts_chunk$set(warning=FALSE, 
               message=FALSE, 
               eval=FALSE, 
               out.width = "80%",
               fig.align = "center",
               collapse = TRUE,
               comment = "#>")


## ----install-devtools---------------------------------------------------------
#  install.packages("devtools")

## ----install-whomds-----------------------------------------------------------
#  devtools::install_github("lindsayevanslee/whomds")

## ----install-whomds-manually--------------------------------------------------
#  devtools::install("C:/Users/leel/Downloads/whomds-master") #use path to unzipped folder downloaded from Github

## ----open-whomds--------------------------------------------------------------
#  library(whomds)
