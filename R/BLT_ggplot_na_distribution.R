#' Wrapper around ggplot_na_distribution with aesthetics
#'
#' Wrapper around imputeTS::ggplot_na_distribution that takes
#' data and mapping arguments like the rest of ggplot2
#'
#' @param data Default dataset to use for plot
#' @param mapping set of aesthetic mappings created by aes()
#' @param ... Additional arguments to be passed to [imputeTS::ggplot_na_distribution]
#'
#' ggplot_na_distribution() understands the x aesthetic.
#'
#' @returns a ggplot object
#' @export
#'
#' @examples
#' bacon |>
#' BLT_ggplot_na_distribution(mapping = ggplot2::aes(x = value))
#' BLT_ggplot_na_distribution(bacon, mapping = ggplot2::aes(x = value))
BLT_ggplot_na_distribution <- function(data, mapping = aes(), ...){
  var <- mapping$x
  var_eval <- rlang::eval_tidy(var, data = data)
  imputeTS::ggplot_na_distribution(var_eval)
}
