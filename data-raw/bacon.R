## code to prepare `bacon` dataset goes here
bacon_no_date <- bacon |>
  dplyr::select(-c(realtime_start:realtime_end))
usethis::use_data(bacon_no_date, overwrite = TRUE)
