set_testdata(bacon)

test_that("bacon data passes", {
    expect_values(series_id, "APU0000704111")
    expect_range(value, 0.5, 8)
    # expect_date_formatted(date) # should work
    expect_equal(dim(bacon), c(119, 5))
})
