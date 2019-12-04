#' These data are chinese character frequency Statistics based on read world news.
#' This is data to be included in my package.
#'
#' @name characterTable
#'
#' @usage data(characterTable)
#'
#' @keywords datasets
#'
#' @format
#' \describe{
#' \item{character}{candidate}
#' \item{freq}{occurence of character}
#' \item{pct}{frequency of character}
#' }
#' @examples
#' data(characterTable)
#' twoChar <- twoCharacters
#' wordFreq <- oneCharacters

install.packages("rlist")
install.packages("tidyverse")
library(rlist)
library(tidyverse)
data("characterTable")

