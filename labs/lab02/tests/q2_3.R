test = list(
  name = "q2_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        if (is.null(num_non_vowels) || !is.function(num_non_vowels)) {
          testthat::fail("`num_non_vowels` should be a function.")
        } else if (!isTRUE(all.equal(num_non_vowels("data science"), 7))) {
          testthat::fail("num_non_vowels(\"data science\") should be 7 (remember: the space counts as a non-vowel).")
        } else if (!isTRUE(all.equal(num_non_vowels("rhythm"), 6))) {
          testthat::fail("num_non_vowels(\"rhythm\") should be 6 -- no vowels there at all!")
        } else if (!isTRUE(all.equal(num_non_vowels("aeiou"), 0))) {
          testthat::fail("num_non_vowels(\"aeiou\") should be 0. Are you counting the right characters?")
        } else {
          testthat::succeed()
        }
      }
    )
  )
)
