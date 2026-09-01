test = list(
  name = "q4_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(days) || isTRUE(all.equal(days, 0))) {
          testthat::fail("`days` is still 0 -- complete the while loop so it counts the doublings.")
        } else if (isTRUE(all.equal(days, 6))) {
          testthat::fail("Off by one! After 6 doublings you have $64, which doesn't exceed $100 yet.")
        } else if (isTRUE(all.equal(days, 8))) {
          testthat::fail("Off by one! Check your loop condition: you may have doubled once too many times.")
        } else if (!isTRUE(all.equal(days, 7))) {
          testthat::fail("Not quite. Keep doubling money and adding 1 to days while money is at most 100.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
