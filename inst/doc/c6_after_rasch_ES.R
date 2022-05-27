## ----setup, include=FALSE-----------------------------------------------------
library(knitr)
library(tidyr)
library(dplyr)
library(whomds)

opts_chunk$set(warning=FALSE, 
               message=FALSE, 
               eval=FALSE, 
               out.width = "80%",
               fig.align = "center",
               collapse = TRUE,
               comment = "#>",
               survey.lonely.psu = "adjust")


## ----join-example-------------------------------------------------------------
#  library(tidyverse)
#  new_score <- read_csv("Data_final.csv") %>%
#    select(c("ID", "rescaled"))
#  merged_data <- original_data %>%
#    left_join(new_score) %>%
#    rename("DisabilityScore" = "rescaled")

## ----table-weightedpct-example1, eval=TRUE------------------------------------
#Quitar NAs de la columna utilizada para el argumento by_vars
df_adults_noNA <- df_adults %>% 
  filter(!is.na(disability_cat))

table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = "disability_cat",
  spread_key = NULL,
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = NULL
  )

## ----table-weightedpct-example2, eval=TRUE------------------------------------
table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = "disability_cat",
  spread_key = "disability_cat",
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = NULL
  )

## ----table-weightedpct-example3, eval=TRUE------------------------------------
table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = "disability_cat",
  spread_key = "disability_cat",
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = TRUE,
  resp == 5
  )

## ----table-weightedpct-example4, eval=TRUE------------------------------------
table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = c("disability_cat", "sex"),
  spread_key = "disability_cat",
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = TRUE,
  resp == 5
  )

## ----table-weightedpct-example5, eval=TRUE------------------------------------
table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = c("disability_cat", "sex"),
  spread_key = "resp",
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = FALSE,
  disability_cat, sex, item, problems = `4`+`5`
  )

## ----table-weightedpct-example5b, eval=TRUE-----------------------------------
table_weightedpct(
  df = df_adults_noNA,
  vars_ids = "PSU",
  vars_strata = "strata",
  vars_weights = "weight",
  formula_vars = paste0("EF", 1:12),
  formula_vars_levels = 1:5,
  by_vars = c("disability_cat", "sex"),
  spread_key = "resp",
  spread_value = "prop",
  arrange_vars = NULL,
  willfilter = FALSE,
  disability_cat, sex, item, problems = `4`+`5`
  ) %>% 
    pivot_wider(names_from = disability_cat, values_from = problems)

## ----table-unweightedpctn-example, eval=TRUE----------------------------------
table_unweightedpctn(df_adults_noNA, 
                     vars_demo = c("sex", "age_cat", "work_cat", "edu_cat"), 
                     group_by_var = "disability_cat", 
                     spread_by_group_by_var = TRUE)

## ----table-basicstats-example, eval=TRUE--------------------------------------
table_basicstats(df_adults_noNA, "HHID", "age_cat")

## ----plot-pop-pyramid, eval=TRUE, echo=FALSE----------------------------------
include_graphics("Images/pop_pyramid.png")

## ----plot-distribution, eval=TRUE, echo=FALSE---------------------------------
include_graphics("Images/distribution.png")

## ----plot-density, eval=TRUE, echo=FALSE--------------------------------------
include_graphics("Images/density.png")

