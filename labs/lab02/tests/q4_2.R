test = list(
  name = "q4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected <- sum(c(20.12, 39.90, 31.01, 25.53, 48.99) * 1.2)
        if (is.null(sum_of_charges)) {
          testthat::fail("You haven't changed `sum_of_charges` from NULL yet.")
        } else if (isTRUE(all.equal(sum_of_charges, sum(c(20.12, 39.90, 31.01, 25.53, 48.99))))) {
          testthat::fail("So close -- but that total forgot the tips.")
        } else if (!isTRUE(all.equal(sum_of_charges, expected))) {
          testthat::fail("Not quite. Sum the total charges (bills including 20% tips).")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
