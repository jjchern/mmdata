
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

[![Travis-CI Build Status](https://travis-ci.org/jjchern/mmdata.svg?branch=master)](https://travis-ci.org/jjchern/mmdata) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jjchern/mmdata?branch=master&svg=true)](https://ci.appveyor.com/project/jjchern/mmdata)

The purpose of the R data package `mmdata` is to store datasets from the beloved econometrics textbook [Mastering 'Metrics](http://masteringmetrics.com/).

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/mmdata")
```

Usage
=====

List All the Datasets
---------------------

``` r
library(mmdata)
ls("package:mmdata", all = TRUE)
#>  [1] "banks"                   "child_labor_law"        
#>  [3] "dd_mlda"                 "hs_diploma"             
#>  [5] "mdve"                    "nhis2009"               
#>  [7] "qob"                     "rand_hie_annual_spend"  
#>  [9] "rand_hie_initial_sample" "rand_hie_person_years"  
#> [11] "rd_mlda"                 "twins"
```

The QOB Instrument from AK91
----------------------------

``` r
library(tibble)
mmdata::qob
#> Source: local data frame [329,509 x 5]
#> 
#>         lnw     s   yob   qob   sob
#>       <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1  5.790019    12    30     1    45
#> 2  5.952494    11    30     1    45
#> 3  5.315949    12    30     1    45
#> 4  5.595926    12    30     1    45
#> 5  6.068915    12    30     1    37
#> 6  5.793871    11    30     1    45
#> 7  6.389161    11    30     1    36
#> 8  6.047781    12    30     1    51
#> 9  5.354861    11    30     1    45
#> 10 5.259597     7    30     1    45
#> ..      ...   ...   ...   ...   ...
```
