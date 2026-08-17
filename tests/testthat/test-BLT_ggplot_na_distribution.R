test_that("plots are consistent", {
 tomato_plot <- BLT_ggplot_na_distribution(tomatoes, mapping = aes(x = value))
 vdiffr::expect_doppelganger("figure is correct", tomato_plot)
})
