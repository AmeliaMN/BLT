#' First-order autoregressive model
#'
#' This function is a wrapper around the forecast::Arima() function.
#' It creates a first-order autoregressive model with a constant term.
#'
#' @param x a vector, ideally a timeseries vector
#'
#' @returns an Arima model
#' @export
#'
#' @examples
AR1 <- function(x){
  forecast::Arima(x, order = c(1, 0, 0), include.constant = TRUE)
}
