AR1 <- function(x){
  forecast::Arima(x, order = c(1, 0, 0), include.constant = TRUE)
}
