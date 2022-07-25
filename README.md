
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/edward-burn/ussie/workflows/R-CMD-check/badge.svg)](https://github.com/edward-burn/ussie/actions)
<!-- badges: end -->

The goal of ussie is to help prepare football data from European
countries for analysis.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("edward-burn/ussie")
```

## Example

``` r
library(ussie)
uss_make_matches(engsoccerdata::italy, "Italy")
#> # A tibble: 25,404 x 8
#>    country tier  season date       home         visitor goals_home goals_visitor
#>    <chr>   <fct>  <int> <date>     <chr>        <chr>        <int>         <int>
#>  1 Italy   1       1934 1934-09-30 Lazio Roma   US Liv~          6             1
#>  2 Italy   1       1934 1934-09-30 Torino FC    Unione~          3             1
#>  3 Italy   1       1934 1934-09-30 Sampierdare~ Bologn~          2             1
#>  4 Italy   1       1934 1934-09-30 SSC Napoli   US Ale~          0             1
#>  5 Italy   1       1934 1934-09-30 ACF Fiorent~ AS Roma          4             1
#>  6 Italy   1       1934 1934-09-30 Brescia Cal~ Juvent~          0             2
#>  7 Italy   1       1934 1934-09-30 Inter        US Pal~          3             0
#>  8 Italy   1       1934 1934-09-30 Pro Vercelli AC Mil~          1             2
#>  9 Italy   1       1934 1934-10-07 AC Milan     ACF Fi~          1             1
#> 10 Italy   1       1934 1934-10-07 US Livorno   Inter            1             1
#> # ... with 25,394 more rows
```
