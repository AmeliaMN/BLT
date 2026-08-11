tomatoes_miss <- tomatoes |>
  dplyr::slice(1:50) |>
  perc_missing_tidy(value)

test_that("output is a tibble", {
  expect_true(tibble::is_tibble(tomatoes_miss))
  expect_named(tomatoes_miss, c("perc"))
})
