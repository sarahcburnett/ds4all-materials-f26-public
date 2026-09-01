test = list(
  name = "q6_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(receipt) || !is.function(receipt)) {
          testthat::fail("`receipt` should be a function.")
        } else if (identical(receipt(c("eggs", "milk", "bread")), "Receipt: eggs milk bread")) {
          testthat::fail("So close -- the items need a comma AND a space between them. Try collapse = \", \".")
        } else if (identical(receipt(c("eggs", "milk", "bread")), "Receipt:eggs, milk, bread")) {
          testthat::fail("Almost -- you're missing the space after the colon.")
        } else if (!identical(receipt(c("eggs", "milk", "bread")), "Receipt: eggs, milk, bread")) {
          testthat::fail("Not quite. Expected exactly \"Receipt: eggs, milk, bread\". Check your spacing character by character.")
        } else if (!identical(receipt(c("tea")), "Receipt: tea")) {
          testthat::fail("receipt(c(\"tea\")) should be \"Receipt: tea\". Does your function work for a single item?")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
