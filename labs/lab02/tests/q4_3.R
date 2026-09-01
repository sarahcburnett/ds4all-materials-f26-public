test = list(
  name = "q4_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(my_total) || !is.function(my_total)) {
          testthat::fail("`my_total` should be a function.")
        } else if (grepl("sum\\(", paste(deparse(body(my_total)), collapse = " "))) {
          testthat::fail("No sum() allowed in this one! Build the total yourself with a for loop.")
        } else if (!isTRUE(all.equal(my_total(c(1, 2, 3)), 6))) {
          testthat::fail("my_total(c(1, 2, 3)) should be 6. Start total at 0 and add each element inside the loop.")
        } else if (!isTRUE(all.equal(my_total(c(20.12, 39.90, 31.01, 25.53, 48.99)), 165.55))) {
          testthat::fail("Almost! Make sure your loop visits every element of x.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
