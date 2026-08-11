# A tidy version of perc_missing

A wrapper around
[imputeTS::statsNA](https://SteffenMoritz.github.io/imputeTS/reference/statsNA.html)
that accepts tidy arguments

## Usage

``` r
perc_missing_tidy(dataset, variable)
```

## Arguments

- dataset:

  a dataset

- variable:

  a variable within that dataset, ideally a time series

## Value

a tibble containing the percent of the variable that was missing

## Examples

``` r
bacon |> perc_missing_tidy(value)
#> # A tibble: 1 × 1
#>   perc 
#>   <chr>
#> 1 0.84%

lettuce |> perc_missing_tidy(value)
#> # A tibble: 1 × 1
#>   perc 
#>   <chr>
#> 1 34.5%
```
