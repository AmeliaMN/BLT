test_that("dataframe validation works", {
  expect_no_error(validate_data_frame(bacon))
  expect_invisible(validate_data_frame(bacon))
  expect_error(validate_data_frame(c(1, 2, 5)))
})


test_that("column validation works", {
  expect_no_error(validate_cols(bacon, cols_req = FRED_columns()))
  expect_error(validate_cols(mtcars, cols_req = FRED_columns()))
})
