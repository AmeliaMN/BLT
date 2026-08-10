perc_missing <- function(x){
  # sum(is.na(lettuce$value))/length(lettuce$value)
  imputeTS::statsNA(x, print_only = FALSE)$percentage_NAs
}
