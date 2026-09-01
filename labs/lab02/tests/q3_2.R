test = list(
  name = "q3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(is_even) || !is.function(is_even)) {
          testthat::fail("`is_even` should be a function.")
        } else if (!isTRUE(is_even(4)) || !isTRUE(is_even(0))) {
          testthat::fail("is_even(4) and is_even(0) should both be TRUE. Remember: even means n %% 2 == 0.")
        } else if (!identical(is_even(7), FALSE)) {
          testthat::fail("is_even(7) should be FALSE.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
