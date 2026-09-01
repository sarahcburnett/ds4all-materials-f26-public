test = list(
  name = "q5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(split_bill) || !is.function(split_bill)) {
          testthat::fail("`split_bill` should be a function.")
        } else {
          default_try <- tryCatch(split_bill(100, 4), error = function(e) NULL)
          if (is.null(default_try)) {
            testthat::fail("split_bill(100, 4) errored. Did you give tip_rate a default value of 0.2 in the definition?")
          } else if (!isTRUE(all.equal(default_try, 30))) {
            testthat::fail("split_bill(100, 4) should be 30: ($100 * 1.2) / 4 people.")
          } else if (!isTRUE(all.equal(split_bill(100, 4, tip_rate = 0.25), 31.25))) {
            testthat::fail("split_bill(100, 4, tip_rate = 0.25) should be 31.25. Is your function using the tip_rate argument?")
          } else if (!isTRUE(all.equal(split_bill(47, 5), 11.28))) {
            testthat::fail("split_bill(47, 5) should be 11.28. Are you rounding to 2 decimal places with round()?")
          } else {
            testthat::succeed()
          }
        }
      }
    )
  )
)
