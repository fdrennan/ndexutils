library(testthat)
library(ndexutils)
library(assertthat)

Sys.setenv("NDEXR_VERBOSE"='true')

test_that("ndex_glue_system works with base system", {
  expect_equal(ndex_glue_system('ls'), 0L)
})

test_that("ndex_glue_system works with base system", {
  expect_equal(ndex_glue_system('afcej'), 127L)
})
