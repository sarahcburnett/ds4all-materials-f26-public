test = list(
  name = "q4_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected <- 2 ^ (0:9)
        if (is.null(powers_of_two)) {
          testthat::fail("You haven't changed `powers_of_two` from NULL yet.")
        } else if (isTRUE(all.equal(unname(powers_of_two), 2 ^ (1:10)))) {
          testthat::fail("Close -- but the first power should be 2^0 = 1. Check your exponent range.")
        } else if (length(powers_of_two) != 10) {
          testthat::fail("`powers_of_two` should have exactly 10 elements, 2^0 through 2^9.")
        } else if (!isTRUE(all.equal(unname(powers_of_two), expected))) {
          testthat::fail("Not quite. Try raising 2 to the vector 0:9.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
