test = list(
  name = "q5_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(dinner_share) || !is.function(dinner_share)) {
          testthat::fail("`dinner_share` should be a function.")
        } else if (!isTRUE(all.equal(dinner_share(100, 4, "excellent"), 31.25))) {
          testthat::fail("dinner_share(100, 4, \"excellent\") should be 31.25. Use choose_tip() to get the rate.")
        } else if (!isTRUE(all.equal(dinner_share(100, 4, "good"), 30))) {
          testthat::fail("dinner_share(100, 4, \"good\") should be 30.")
        } else if (!isTRUE(all.equal(dinner_share(100, 4, "meh"), 28.75))) {
          testthat::fail("dinner_share(100, 4, \"meh\") should be 28.75 -- any unrecognized service means a 15% tip.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
