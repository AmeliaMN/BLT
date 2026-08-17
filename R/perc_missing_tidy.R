#' A tidy version of perc_missing
#'
#' A wrapper around [imputeTS::statsNA] that accepts tidy arguments
#'
#' @param dataset a dataset
#' @param variable a variable within that dataset, ideally a time series
#'
#' @returns a tibble containing the percent of the variable that was missing
#' @export
#'
#' @examples
#' tomatoes |> perc_missing_tidy(value)
#'
#' lettuce |> perc_missing_tidy(value)
perc_missing_tidy <- function(dataset, variable){
  # if(dim(dataset)[1] > 100){
  #   print("big dataset")
  # }

  validate_data_frame(dataset)
  validate_cols(dataset, cols_req = FRED_columns())
  var <- substitute(variable)
  var_eval <- eval(var, envir = dataset)
  na_stats <- imputeTS::statsNA(var_eval, print_only = FALSE)
  tibble_perc <- tibble::tibble(perc = na_stats$percentage_NAs)
  return(tibble_perc)
}
# perc_missing_tidy <- function(df, column) {
#   validate_data_frame(df)
#   validate_cols(df, cols_req = FRED_columns())
#   x <- df |>
#     dplyr::select({{ column }}) |>
#     dplyr::pull()
#   # sum(is.na(lettuce$value))/length(lettuce$value)
#   statsNA(x, print_only = FALSE)$percentage_NAs
# }
