# Wrapper around ggplot_na_distribution with aesthetics

Wrapper around imputeTS::ggplot_na_distribution that takes data and
mapping arguments like the rest of ggplot2

## Usage

``` r
BLT_ggplot_na_distribution(data, mapping = aes(), ...)
```

## Arguments

- data:

  Default dataset to use for plot

- mapping:

  set of aesthetic mappings created by aes()

- ...:

  Additional arguments to be passed to
  [imputeTS::ggplot_na_distribution](https://SteffenMoritz.github.io/imputeTS/reference/ggplot_na_distribution.html)

  ggplot_na_distribution() understands the x aesthetic.

## Value

a ggplot object

## Examples

``` r
bacon |>
BLT_ggplot_na_distribution(mapping = ggplot2::aes(x = value))

BLT_ggplot_na_distribution(bacon, mapping = ggplot2::aes(x = value))
```
