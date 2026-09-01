test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(each_pays) || is.null(left_over)) {
          testthat::fail("Fill in both `each_pays` and `left_over`.")
        } else if (isTRUE(all.equal(each_pays, 2)) && isTRUE(all.equal(left_over, 9))) {
          testthat::fail("Looks like you swapped the operators: %/% gives the whole-dollar share, %% gives the remainder.")
        } else if (!isTRUE(all.equal(each_pays, 9))) {
          testthat::fail("Check `each_pays`: how many whole dollars does 47 %/% 5 give?")
        } else if (!isTRUE(all.equal(left_over, 2))) {
          testthat::fail("Check `left_over`: what remainder does 47 %% 5 leave?")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
