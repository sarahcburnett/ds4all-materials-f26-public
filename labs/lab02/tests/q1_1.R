test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (!exists("larger") || is.null(larger)) {
          testthat::fail("You haven't changed `larger` from NULL yet.")
        } else if (isTRUE(all.equal(larger, 343))) {
          testthat::fail("That's the smaller of the two! Try using max() on both expressions as the arguments.")
        } else if (!isTRUE(all.equal(larger, 2187))) {
          testthat::fail("Not quite. Compare 3^7 and 7^3 with max().")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
