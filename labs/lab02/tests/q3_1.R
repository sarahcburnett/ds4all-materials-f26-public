test = list(
  name = "q3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(choose_tip) || !is.function(choose_tip)) {
          testthat::fail("`choose_tip` should be a function.")
        } else if (!isTRUE(all.equal(choose_tip("excellent"), 0.25))) {
          testthat::fail("choose_tip(\"excellent\") should return 0.25.")
        } else if (!isTRUE(all.equal(choose_tip("good"), 0.20))) {
          testthat::fail("choose_tip(\"good\") should return 0.2. Check your else if branch.")
        } else if (!isTRUE(all.equal(choose_tip("meh"), 0.15)) || !isTRUE(all.equal(choose_tip("terrible"), 0.15))) {
          testthat::fail("Any other service string should return 0.15. Use a plain else for the catch-all.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
