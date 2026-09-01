test = list(
  name = "q4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected <- c(20.12, 39.90, 31.01, 25.53, 48.99) * 1.2
        if (is.null(total_charges)) {
          testthat::fail("You haven't changed `total_charges` from NULL yet.")
        } else if (isTRUE(all.equal(unname(total_charges), c(20.12, 39.90, 31.01, 25.53, 48.99) * 0.2))) {
          testthat::fail("That's just the tip! The total charge is the bill PLUS the tip.")
        } else if (!isTRUE(all.equal(unname(total_charges), expected))) {
          testthat::fail("Not quite. Multiply the whole restaurant_bills vector by 1.2.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
