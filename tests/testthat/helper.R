library(rlang)
library(testdat)

chk_date_yyyymmdd_formatted <- function(x) {
  stringr::str_detect(x, "^[1-2][0-9]{3}-[0-1][0-9]-[0-3][0-9]$") & !is.na(lubridate::ymd(x, quiet = TRUE))
}

expect_date_formatted <- expect_make(chk_date_yyyymmdd_formatted)

set_testdata(bacon)
