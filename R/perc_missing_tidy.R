# perc_missing_tidy <- function(df, column){
#   x <- df |>
#     dplyr::select({{ column }}) |>
#     dplyr::pull()
#   # sum(is.na(lettuce$value))/length(lettuce$value)
#   imputeTS::statsNA(x, print_only = FALSE)$percentage_NAs
# }

perc_missing_tidy <- function(dataset, variable){
  var <- substitute(variable)
  var_eval <- eval(variable, envir = dataset)
  na_stats <- imputeTS::statsNA(var_eval, print_only = FALSE)
  tibble_perc <- tibble::tibble(perc = na_stats$percentage_NAs)
  return(tibble_perc)
}
