test_that("cap_var works", {

  expect_equal(cap_var(x=c(1:10), cap = 8, floor = 2),
               c(2,2,3,4,5,6,7,8,8,8))

  expect_equal(cap_var(1, cap = 8, floor = 3), 3)
})

test_that("input is numeric", {

  expect_error(cap_var(x = "2", cap = 8, floor = 2))

})

test_that("no output is below floor", {

  expect_less_than(any())
})
