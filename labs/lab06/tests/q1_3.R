# Lab 06 autograder test. Expected answers are stored as SHA-256 hashes.
test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      name = "q1_3a",
      hidden = FALSE,
      points = 1,
      code = {
        .t_check <- function(ok, hint) {
          if (isTRUE(ok)) testthat::succeed() else testthat::fail(hint)
        }
        .t_match <- function(x, key) {
          identical(digest::digest(x, algo = "sha256", serialize = FALSE), key)
        }
        .t_num <- function(x, digits = 2) sprintf(paste0("%.", digits, "f"), unname(as.numeric(x)))
        .t_check(exists("r_guess") && !is.null(r_guess),
                 "`r_guess` is still NULL. Replace the placeholder with your code.")
        .t_check(is.character(r_guess) && length(r_guess) == 1,
                 "Set `r_guess` to one letter in quotes, like \"A\".")
        .a <- toupper(trimws(r_guess))
        .t_check(.a %in% c("A", "B", "C", "D", "E"),
                 "Set `r_guess` to one of the letters A, B, C, D, or E, in quotes.")
        .t_check(.t_match(.a, "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43"),
                 "Not quite. A correlation is always between -1 and 1, and your scatter plot slopes up.")
      }
    ),
    ottr::TestCase$new(
      name = "q1_3b",
      hidden = FALSE,
      points = 1,
      code = {
        .t_check <- function(ok, hint) {
          if (isTRUE(ok)) testthat::succeed() else testthat::fail(hint)
        }
        .t_match <- function(x, key) {
          identical(digest::digest(x, algo = "sha256", serialize = FALSE), key)
        }
        .t_num <- function(x, digits = 2) sprintf(paste0("%.", digits, "f"), unname(as.numeric(x)))
        .t_check(exists("faithful") && is.data.frame(faithful) && all(c("eruptions", "waiting") %in% names(faithful)) &&
                   nrow(faithful) == 272,
                 "`faithful` should be the Old Faithful data: 272 rows, with the columns `eruptions` and `waiting`. If you changed it, run faithful <- as_tibble(datasets::faithful) to get it back.")
        .t_check(exists("faithful_su") && is.data.frame(faithful_su) && nrow(faithful_su) == 272 &&
                   all(c("eruptions_su", "waiting_su") %in% names(faithful_su)),
                 "Finish Question 1.2 first: `faithful_su` needs the columns `eruptions_su` and `waiting_su`.")
        .su <- function(v) (v - mean(v)) / sd(v)
        .t_check(isTRUE(all.equal(faithful_su$eruptions_su, .su(faithful$eruptions))) &&
                   isTRUE(all.equal(faithful_su$waiting_su, .su(faithful$waiting))),
                 "Fix `faithful_su` in Question 1.2 first.")
        .t_check(exists("r") && !is.null(r),
                 "`r` is still NULL. Replace the placeholder with your code.")
        .t_check(!is.data.frame(r),
                 "`r` is a table. You need the number inside it: which verb takes a column out as a vector?")
        .t_check(is.numeric(r) && length(r) == 1,
                 "`r` should be a single number.")
        .t_check(!.t_match(.t_num(r, 4), "553dfbfaddd11c07f52c5dcaf2a99089c317c89e9d24268409dfbf68b3a7bd93"),
                 "That's the sum of the products. Divide it by n - 1, where n is the number of eruptions.")
        .t_check(!.t_match(.t_num(r, 4), "8fb2980ef775212975a178e41b85fc070aafe39dc284b4aed1adb0693244438e"),
                 "That's the average of the products, which divides by n. Divide their sum by n - 1 instead, to match sd().")
        .t_check(r >= -1 && r <= 1,
                 "A correlation is always between -1 and 1. Multiply `eruptions_su` by `waiting_su`, add up the products, and divide by n - 1.")
        .t_check(.t_match(.t_num(r, 4), "cef8cb90d1edb4dc53e9ad6effe900a79e38dcfd15899b608fc54ecc7732da81"),
                 "Not the right value yet. Multiply `eruptions_su` by `waiting_su`, add up the products, and divide by the number of eruptions minus 1.")
      }
    )
  )
)
