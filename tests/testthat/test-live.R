library(testthat)
library(fflr)

# check if first game has begun
nfl_sched <- pro_schedule()
now_games <- nfl_sched$kickoff[which(nfl_sched$week == ffl_week())]
if (length(now_games) == 0) {
  pre_game <- TRUE
} else {
  first_game <- min(now_games)
  pre_game <- first_game > Sys.time()
}

test_that("live scoreboard works if gameday", {
  s <- live_scoring(252353)
  skip_if(pre_game, "no live scoring until kickoff")
  expect_length(s, 6)
  expect_equal(nrow(s), 8)
  expect_error(live_scoring(252353, old = TRUE))
})

test_that("live scoreboard can add yet-to-play", {
  s <- live_scoring(252353, yet = TRUE)
  skip_if(pre_game, "no live scoring until kickoff")
  expect_length(s, 7)
  expect_equal(nrow(s), 8)
})
