test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(a_percentage)) {
          testthat::fail("You haven't changed `a_percentage` from NULL yet.")
        } else if (isTRUE(all.equal(a_percentage, sqrt(2) / 2))) {
          testthat::fail("That's still the proportion. Call your to_percentage function on it.")
        } else if (!isTRUE(all.equal(a_percentage, 100 * sqrt(2) / 2))) {
          testthat::fail("Not quite. Pass `a_proportion` to to_percentage().")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
