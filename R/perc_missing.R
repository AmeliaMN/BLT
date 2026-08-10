#' Find percent missing of time series
#'
#' A wrapper around [imputeTS::statsNA]
#'
#' @param x a vector, ideally a time series
#'
#' @returns the percentage of the time series that is NA, as a character string
#' @export
#'
#' @examples
#' perc_missing(bacon$value)
#' perc_missing(lettuce$value)
#' perc_missing(tomatoes$value)
perc_missing <- function(x){
  # sum(is.na(lettuce$value))/length(lettuce$value)
  statsNA(x, print_only = FALSE)$percentage_NAs
}
