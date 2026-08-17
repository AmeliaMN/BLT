validate_data_frame <- function(.data, call = rlang::caller_env()) {
  # predicate
  if (!is.data.frame(.data)) {
    cli::cli_abort(
      # information for user
      c(
        "Must supply a data frame",
        x = "You have supplied a {.cls {class(.data)}}."
      ),
      # class information for developers
      class = "BLT_error_data",
      # other information for developers
      class_data = class(.data),
      # tell user where we are calling from
      call = call
    )
  }

  invisible(.data)
}


validate_cols <- function(.data, cols_req, call = rlang::caller_env()) {

  cols_data <- names(.data)
  cols_missing <- cols_req[!(cols_req %in% cols_data)]

  # predicate
  if (length(cols_missing) > 0) {

    # helper function to format quantities
    # - see https://cli.r-lib.org/articles/pluralization.html
    qlen <- function(x) cli::qty(length(x))

    cli::cli_abort(
      # information for user
      c(
        "Data frame needs {qlen(cols_req)} column{?s}: {.var {cols_req}}",
        i = "Has {qlen(cols_data)} column{?s}: {.var {cols_data}}",
        x = "Missing {qlen(cols_missing)} column{?s}: {.var {cols_missing}}"
      ),
      # class information for developers
      class = "BLT_error_cols",
      # other information for developers
      cols_req = cols_req,
      cols_data = cols_data,
      # tell user where we are calling from
      call = call
    )
  }

  invisible(.data)
}
