test_that("grouped in correct row col division", {
  load("testdata.Rda")
  starwars_selected <- c("Jar Jar Binks","Han Solo", "Boba Fett", "Anakin Skywalker", "Jar Jar Binks","Han Solo", "Boba Fett", "Anakin Skywalker")
#sample(starwars, 8)
  groups <- make_groups(starwars_selected)
  expect_equal(ncol(groups),2)
  expect_equal(nrow(groups),4)
  expect_true(ncol(groups) == 2)
  expect_true("Jar Jar Binks" %in% groups)
})

test_that("uneven people number", {
  load("testdata.Rda")
  starwars_selected <- sample(starwars, 7)
  groups <- make_groups(starwars_selected)
  expect_equal(ncol(groups),2)
  expect_equal(nrow(groups),3)
})

test_that("dataframes are not able to run", {
  df <- data.frame(1:10, 11:20)
  expect_error(make_groups(df), "Input must be a vector.")
})

test_that("but numerical vectors should be ok", {
  vec <- 1:10
  expect_length(make_groups(vec), 10)
})
