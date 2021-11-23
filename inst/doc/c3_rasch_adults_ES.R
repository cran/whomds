## ----setup, include=FALSE-----------------------------------------------------
library(knitr)

opts_chunk$set(warning=FALSE, 
               message=FALSE, 
               eval=FALSE, 
               out.width = "80%",
               fig.align = "center",
               collapse = TRUE,
               comment = "#>")


## ----rasch-mds-help-----------------------------------------------------------
#  ?rasch_mds

## ----rasch-mds-example--------------------------------------------------------
#  rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Start",
#    testlet_strategy = NULL,
#    recode_strategy = NULL,
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Initial run"
#  )

## ----rasch-mds-testlet--------------------------------------------------------
#  rasch_mds(
#    ...,
#    testlet_strategy = list(
#      new = c("EF4", "EF6", "EF8"),
#      c("EF5", "EF7")
#    )
#  )

## ----rasch-mds-recode---------------------------------------------------------
#  rasch_mds(
#    ...,
#    recode_strategy = list(
#      "EF1,EF2" = c(0,1,2,3,3),
#      "EF3" = c(0,0,1,2,3)
#    )
#  )

## ----rasch-mds-drop-----------------------------------------------------------
#  rasch_mds(
#    ...,
#    drop_vars = c("EF4", "EF7")
#  )

## ----rasch-mds-split----------------------------------------------------------
#  rasch_mds(
#    ...,
#    split_strategy = list(
#      sex = c("EF1", "EF2"),
#      age_cat = c("EF3")
#    )
#  )

## ----adult-start-example------------------------------------------------------
#  start <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Start",
#    testlet_strategy = NULL,
#    recode_strategy = NULL,
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Initial run"
#  )

## ----adult-start-LID, echo=FALSE, eval=TRUE-----------------------------------
include_graphics("Images/ExampleRasch_EF/Start/LID_plot.png")

## ----adult-start-scree, echo=FALSE, eval=TRUE---------------------------------
include_graphics("Images/ExampleRasch_EF/Start/parallel_analysis_scree.png")

## ----adult-start-PI, echo=FALSE, eval=TRUE------------------------------------
include_graphics("Images/ExampleRasch_EF/Start/PImap.png")

## ----adult-t1-example---------------------------------------------------------
#  testlet1 <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Testlet1",
#    testlet_strategy = list(workschool = c("EF11", "EF12")),
#    recode_strategy = NULL,
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Testlet: EF11,EF12 (LID>0.25)"
#  )

## ----adult-t1-error, echo=FALSE, eval=TRUE, message=TRUE----------------------
 message("Error in tapply(1L:ncol(X01beta), mt_ind, function(xin) { :
      arguments must have same length ")

## ----adult-t1r1-example-------------------------------------------------------
#  testlet1_recode1 <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Testlet1_Recode1",
#    testlet_strategy = list(workschool = c("EF11", "EF12")),
#    recode_strategy = list(workschool = c(0,1,2,3,4,5,5,5,5)),
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Testlet: EF11,EF12 (LID>0.25); Recode: workschool to 0,1,2,3,4,5,5,5,5"
#  )

## ----adult-t1r1-PI, echo=FALSE, eval=TRUE-------------------------------------
include_graphics("Images/ExampleRasch_EF/Testlet1_Recode1/PImap.png")

## ----adult-t1r2-example-------------------------------------------------------
#  testlet1_recode2 <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Testlet1_Recode2",
#    testlet_strategy = list(workschool = c("EF11", "EF12")),
#    recode_strategy = list(workschool = c(0,1,2,3,4,5,5,5,5),
#                           "EF1,EF2,EF3,EF4,EF5,EF6,EF7,EF8,EF9,EF10" = c(0,1,1,2,3)),
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Testlet: EF11,EF12 (LID>0.25); Recode: workschool to 0,1,2,3,4,5,5,5,5, everything else 0,1,1,2,3"
#  )

## ----adult-t1r2-PI, echo=FALSE, eval=TRUE-------------------------------------
include_graphics("Images/ExampleRasch_EF/Testlet1_Recode2/PImap.png")

## ----adult-t1r3-example-------------------------------------------------------
#  testlet1_recode3 <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Testlet1_Recode3",
#    testlet_strategy = list(workschool = c("EF11", "EF12")),
#    recode_strategy = list(workschool = c(0,1,2,3,4,5,5,5,5),
#                           "EF1,EF2,EF3,EF4,EF5,EF6,EF7,EF8,EF9,EF10" = c(0,1,1,2,2)),
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Testlet: EF11,EF12 (LID>0.25); Recode: workschool to 0,1,2,3,4,5,5,5,5, everything else 0,1,1,2,2"
#  )

## ----adult-t1r3-PI, echo=FALSE, eval=TRUE-------------------------------------
include_graphics("Images/ExampleRasch_EF/Testlet1_Recode3/PImap.png")

## ----adult-t1r4-example-------------------------------------------------------
#  testlet1_recode4 <- rasch_mds(
#    df = df_adults,
#    vars_metric = paste0("EF", 1:12),
#    vars_id = "HHID",
#    vars_DIF = c("sex", "age_cat"),
#    resp_opts = 1:5,
#    max_NA = 2,
#    print_results = TRUE,
#    path_parent = "/Users/lindsaylee/Desktop/",
#    model_name = "Testlet1_Recode4",
#    testlet_strategy = list(workschool = c("EF11", "EF12")),
#    recode_strategy = list(workschool = c(0,1,2,3,4,5,5,5,5),
#                           "EF1,EF2,EF3,EF4,EF5,EF7,EF8,EF9,EF10" = c(0,1,1,2,2),
#                           EF6 = c(0,1,1,1,2)),
#    drop_vars = NULL,
#    split_strategy = NULL,
#    comment = "Testlet: EF11,EF12 (LID>0.25); Recode: workschool to 0,1,2,3,4,5,5,5,5, everything else except EF6 to 0,1,1,2,2, EF6 to 0,1,1,1,2"
#  )

## ----adult-t1r4-PI, echo=FALSE, eval=TRUE-------------------------------------
include_graphics("Images/ExampleRasch_EF/Testlet1_Recode4/PImap.png")

