test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(to_percentage) || !is.function(to_percentage)) {
          testthat::fail("`to_percentage` should be a function. Assign it with to_percentage <- function(proportion) { ... }")
        } else if (!isTRUE(all.equal(to_percentage(0.2), 20))) {
          testthat::fail("to_percentage(0.2) should return 20. What do you multiply a proportion by?")
        } else if (!isTRUE(all.equal(to_percentage(0.55), 55))) {
          testthat::fail("Almost! Make sure your function works for any proportion, not just 0.2.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
