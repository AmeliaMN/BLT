#' First-order autoregressive model
#'
#' This function is a wrapper around the [forecast::Arima()] function.
#' It creates a first-order autoregressive model with a constant term.
#' The [Arima()][forecast::Arima()] function is itself a wrapper of
#' the [arima()][stats::arima()] function.
#'
#' @param x a vector, ideally a timeseries vector
#'
#' @returns an Arima model
#' @export
#'
#' @examples
#' (m1 <- AR1(LakeHuron))
#' AIC(m1)
#' (m2 <- AR1(bacon$value))
#'
AR1 <- function(x){
  forecast::Arima(x, order = c(1, 0, 0), include.constant = TRUE)
}
