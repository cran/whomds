## ----setup, include=FALSE-----------------------------------------------------
library(knitr)

opts_chunk$set(warning=FALSE, 
               message=FALSE, 
               eval=FALSE, 
               out.width = "80%",
               fig.align = "center",
               collapse = TRUE,
               comment = "#>")


## ----rasch-mds-children-help--------------------------------------------------
#  ?rasch_mds_children

## ----rasch-mds-children-example-----------------------------------------------
#  rasch_mds_children(df = df_children,
#                     vars_id = "HHID",
#                     vars_group = "age_cat",
#                     vars_metric_common = paste0("child", c(1:10)),
#                      vars_metric_grouped = list(
#                       "Age2to4" = paste0("child", c(12,15,16,19,20,24,25)),
#                       "Age5to9" = paste0("child", c(11,13,14,17,18,20,21,22,23,24,25,27)),
#                       "Age10to17" = paste0("child", c(11,13,14,17,18,20,21,22,23,25,26,27))),
#                     TAM_model = "PCM2",
#                     resp_opts = 1:5,
#                     has_at_least_one = 4:5,
#                     max_NA = 10,
#                     print_results = TRUE,
#                     path_parent = "~/Desktop/",
#                     model_name = "Start",
#                     testlet_strategy = NULL,
#                     recode_strategy = NULL,
#                     drop_vars = NULL,
#                     split_strategy = NULL,
#                     comment = "Initial run")
#  

