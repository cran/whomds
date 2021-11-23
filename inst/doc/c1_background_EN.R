## ----setup, include=FALSE-----------------------------------------------------
library(knitr)
library(tidyr)
library(dplyr)
library(ggplot2)
library(whomds)

options(survey.lonely.psu = "adjust")

opts_chunk$set(warning=FALSE, 
               message=FALSE, 
               eval=FALSE, 
               out.width = "80%",
               fig.align = "center",
               collapse = TRUE,
               comment = "#>")


## ----plot-scales, eval=TRUE, echo=FALSE---------------------------------------
include_graphics("Images/scales.png")

## ----plot-ruler, eval=TRUE, echo=FALSE----------------------------------------
include_graphics("Images/ruler.png")

## ----plot-oranges, eval=TRUE, echo=FALSE--------------------------------------
include_graphics("Images/oranges.png")

## ----plot-distributionruler, eval=TRUE, echo=FALSE----------------------------
include_graphics("Images/distributionruler.png")

## ----plot-continuum, eval=TRUE, echo=FALSE------------------------------------
include_graphics("Images/continuum.png")

## ----plot-continuum-person, eval=TRUE, echo=FALSE-----------------------------
include_graphics("Images/continuum_person.png")

## ----plot-continuum-personitem, eval=TRUE, echo=FALSE-------------------------
include_graphics("Images/continuum_personitem.png")

## ----rasch-setup, echo=FALSE, eval=TRUE, out.width = NULL---------------------

x <- seq(-5,5,0.01)
y <- exp(x)/(1+exp(x))
df <- tibble(x,y)

ggplot(df,aes(x=x,y=y)) + 
  geom_point() +
  labs(x="Difference between person ability\n and item difficulty", y="Probability of person getting\n question correct")+
  geom_hline(yintercept=1, color="red", linetype=2) +
  geom_hline(yintercept=0, linetype=2) +
  geom_vline(xintercept=0)


## ----rasch-setup-poly, echo=FALSE, eval=TRUE, out.width = NULL----------------

x <- seq(-5,5,0.01)
tao <- c(-2.5,0,2.5)
y0 <- exp(x-tao[1])/(1+exp(x-tao[1]))
y1 <- exp(x-tao[2])/(1+exp(x-tao[2]))
y2 <- exp(x-tao[3])/(1+exp(x-tao[3]))
df <- tibble(x,y0,y1,y2)
df.long <- df %>%
  gather(Threshold,y,-x)

ggplot(df.long,aes(x=x,y=y,color=Threshold)) + 
  geom_point()+
  scale_color_discrete(labels=c("First","Second","Third")) +
  labs(x="Difference between person ability\n and item difficulty", y="Conditional probability of person\n passing response threshold")+
  geom_hline(yintercept=1, color="red", linetype=2) +
  geom_hline(yintercept=0, linetype=2) +
  geom_vline(xintercept=0)


## ----iteration, echo=FALSE, eval=TRUE-----------------------------------------
include_graphics("Images/iteration_EN.png")

## ----plot-highjump, eval=TRUE, echo=FALSE-------------------------------------
include_graphics("Images/highjump.jpg")

## ----plot-repair, eval=TRUE, echo=FALSE---------------------------------------
include_graphics("Images/repair.png")

