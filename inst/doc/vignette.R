## ----echo=FALSE, results="hide", message=FALSE--------------------------------
library(BiocStyle)
library(magrittr)
library(dplyr)

## ----install_CRAN, eval=FALSE-------------------------------------------------
#  install.packages("corrmeta")

## ----install_github, eval=FALSE-----------------------------------------------
#  devtools::install_github("wsjung/corrmeta")

## ----install_load-------------------------------------------------------------
library(corrmeta)

## ----load_data----------------------------------------------------------------
data(snp_example, package="corrmeta")
varlist <- c("trt1","trt2","trt3")

## ----corrmeta-----------------------------------------------------------------
tc <- tetracorr(snp_example, varlist)
tc

## ----fishp--------------------------------------------------------------------
fishp(snp_example, varlist, tc$sigma, tc$sum_sigma)

## ----load_data_missing--------------------------------------------------------
data(snp_example_missing, package="corrmeta")
varlist <- c("trt1","trt2","trt3")

## ----show_data_missing, echo=FALSE--------------------------------------------
snp_example_missing

## ----corrmetamissing----------------------------------------------------------
tc <- tetracorr(snp_example_missing, varlist)
tc

## ----fishpmissing-------------------------------------------------------------
fishp(snp_example_missing, varlist, tc$sigma, tc$sum_sigma)

## ----sessionInfo, echo=FALSE--------------------------------------------------
sessionInfo()

