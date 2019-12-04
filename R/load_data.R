#' @name load_data
#' @title load data
#'
#' @description This is a function for loading data for this package
#' chinese character frequency Statistics table.
#' @export
load_data <- function(){
  install.packages("rlist")
  install.packages("tidyverse")
  library(rlist)
  library(tidyverse)
  data("characterTable")
}

