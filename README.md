
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vbfun

<!-- badges: start -->

<!-- badges: end -->

The goal of vbfun is to provide functions that calculate a range of
vector biology parameters

## Installation

You can install the development version of vbfun from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("geryan/vbfun")
```

## Example

``` r
temps <- seq(0, 45, by = 1)

extrinsic_incubation_period(temp = temps, temp_min = 14)
```
