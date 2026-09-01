test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected <- c("small", "small", "small", "big", "big")
        if (is.null(bill_sizes)) {
          testthat::fail("You haven't changed `bill_sizes` from NULL yet.")
        } else if (length(bill_sizes) != 5) {
          testthat::fail("`bill_sizes` should have one label for each of the 5 bills. Did you use ifelse() on the whole vector?")
        } else if (identical(unname(bill_sizes), c("small", "big", "small", "big", "big"))) {
          testthat::fail("Check the $20.00 bill: exactly 20 is not OVER 20. Did you use >= where you wanted >?")
        } else if (identical(unname(bill_sizes), rev(expected))) {
          testthat::fail("Your labels look reversed. Check which branch of ifelse() is the yes and which is the no.")
        } else if (!identical(unname(bill_sizes), expected)) {
          testthat::fail("Not quite. A bill is \"big\" when it is strictly over 20, and \"small\" otherwise.")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)