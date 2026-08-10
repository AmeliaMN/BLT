# Find percent missing of time series

A wrapper around
[imputeTS::statsNA](https://SteffenMoritz.github.io/imputeTS/reference/statsNA.html)

## Usage

``` r
perc_missing(x)
```

## Arguments

- x:

  a vector, ideally a time series

## Value

the percentage of the time series that is NA, as a character string

## Examples

``` r
perc_missing(bacon$value)
#> [1] "0.84%"
perc_missing(lettuce$value)
#> [1] "34.5%"
perc_missing(tomatoes$value)
#> [1] "2.52%"
```
