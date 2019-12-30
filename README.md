
# rwstats

<!-- badges: start -->
[![Build Status](https://travis-ci.org/Flaretie/rwstats.svg?branch=master)](https://travis-ci.org/Flaretie/rwstats)
[![Build status](https://ci.appveyor.com/api/projects/status/423fuqf529c9elml/branch/master?svg=true)](https://ci.appveyor.com/project/Flaretie/rwstats-n8p72/branch/master)
[![CRAN status](https://www.r-pkg.org/badges/version/rwstats)](https://cran.r-project.org/package=rwstats)
<!-- badges: end -->

This package allows users to get the frequency of occurrence of Chinese characters in the real world.
Our statistics are based on news data which includes Tencent, Sina and China Daily and People's daily


## Installation

You can install the development version of rwstats with:

``` r
devtools::install_github("Flaretie/rwstats")
library(rwstats)
```
Install the rwstats from CRAN with:

``` r
install.packages("rwstats")
library(rwstats)
```

## Metadata
`oneChar` contains the frequency of single Chinese characters. eg. "可"  
`twoChar` contain the frequency of Chinese words of two characters. eg. "可以"  
`threeChar` contain the frequency of Chinese words of three characters. eg. "不可以"  
`fourChar` contain the frequency of Chinese words of four characters. eg. "可不可以"  
`fiveChar` contain the frequency of Chinese words of five characters. eg. "可以不可以"  

## Examples

``` r
library(rwstats)
## get the word frequency table of C
head(oneChar)
head(fourChar)

## get the appearence rate of next word
wordMiner.next("可")
```

