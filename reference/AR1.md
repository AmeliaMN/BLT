# First-order autoregressive model

This function is a wrapper around the
[`forecast::Arima()`](https://pkg.robjhyndman.com/forecast/reference/Arima.html)
function. It creates a first-order autoregressive model with a constant
term. The
[Arima()](https://pkg.robjhyndman.com/forecast/reference/Arima.html)
function is itself a wrapper of the
[arima()](https://rdrr.io/r/stats/arima.html) function.

## Usage

``` r
AR1(x)
```

## Arguments

- x:

  a vector, ideally a timeseries vector

## Value

an Arima model

## Examples

``` r
(m1 <- AR1(LakeHuron))
#> Series: x 
#> ARIMA(1,0,0) with non-zero mean 
#> 
#> Coefficients:
#>          ar1      mean
#>       0.8375  579.1153
#> s.e.  0.0538    0.4240
#> 
#> sigma^2 = 0.5199:  log likelihood = -106.6
#> AIC=219.2   AICc=219.45   BIC=226.95
AIC(m1)
#> [1] 219.1959
(m2 <- AR1(bacon$value))
#> Series: x 
#> ARIMA(1,0,0) with non-zero mean 
#> 
#> Coefficients:
#>          ar1    mean
#>       0.9720  6.1917
#> s.e.  0.0185  0.4317
#> 
#> sigma^2 = 0.02769:  log likelihood = 43.42
#> AIC=-80.83   AICc=-80.62   BIC=-72.49
```
