m1 <- AR1(tomatoes$value)


test_that("check coefficients", {
  expect_equal(length(m1$coef), 2)
  expect_named(m1$coef, c("ar1", "intercept"))
})

test_that("AR1 is appropriate class", {
  expect_equal(class(m1),
               c("fc_model",  "forecast_ARIMA", "ARIMA", "Arima"))
})



test_that("names of AR1 output are as expected", {
  expect_named(m1, c("coef",      "sigma2",    "var.coef",  "mask",
                     "loglik",  "aic",       "arma",     "residuals",
                     "call",      "series", "code",      "n.cond",
                     "nobs",     "model",    "aicc", "bic",
                     "x",         "fitted"))
})

test_that("output of AR1 is as expected", {
  expect_equal(m1$coef["ar1"], c(ar1 = 0.741), tolerance = 0.001)
})
