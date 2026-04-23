test_that("eip calculates properly", {
  expect_equal(
    extrinsic_incubation_period(40, 16),
    4.625
  )
})
