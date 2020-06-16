## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(GSA.UN)

## ----echo=TRUE, results='hide'------------------------------------------------
library(GSA.UN)
library(stats)
library(e1071)

data("Example_Data")

data_Bstat <- Bstat(out_set)


