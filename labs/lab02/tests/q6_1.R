test = list(
  name = "q6_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(exact_cents) || !is.function(exact_cents)) {
          testthat::fail("`exact_cents` should be a function.")
        } else if (isTRUE(all.equal(as.numeric(exact_cents(19.99)), 1998))) {
          testthat::fail("You hit the floating point trap! round() the cents BEFORE converting with as.integer().")
        } else if (!isTRUE(all.equal(as.numeric(exact_cents(19.99)), 1999))) {
          testthat::fail("exact_cents(19.99) should be 1999. Multiply by 100, round(), then convert.")
        } else if (typeof(exact_cents(19.99)) != "integer") {
          testthat::fail("Right number, wrong type! typeof(exact_cents(19.99)) should be \"integer\". Use as.integer().")
        } else if (!isTRUE(all.equal(as.numeric(exact_cents(2.50)), 250)) || !isTRUE(all.equal(as.numeric(exact_cents(4.01)), 401))) {
          testthat::fail("Almost! Make sure exact_cents works for any dollar amount, e.g. 2.50 -> 250 and 4.01 -> 401.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
