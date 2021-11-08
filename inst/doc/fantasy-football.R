## ---- include = FALSE-------------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
if (!interactive()) {
  options(width = 90)
}

## ----setup------------------------------------------------------------------------------
library(fflr)
packageVersion("fflr")
ffl_id(leagueId = "42654852")

## ----team-roster------------------------------------------------------------------------
my_team <- team_roster(scoringPeriodId = 1)[[1]] # select first roster
my_team[, -(1:3)]

## ----player-outlook---------------------------------------------------------------------
player_outlook(limit = 1)

## ----player-news------------------------------------------------------------------------
player_news(playerId = "3139477", parseHTML = FALSE)

## ----league-info------------------------------------------------------------------------
league_info(leagueId = "42654852")
league_name()
league_size()
str(league_status())

## ----draft-settings---------------------------------------------------------------------
draft_settings()

## ----roster-settings--------------------------------------------------------------------
roster_settings()

## ----score-settings---------------------------------------------------------------------
scoring_settings()

## ----waiver-settings--------------------------------------------------------------------
acquisition_settings()

## ----schedule-settings------------------------------------------------------------------
schedule_settings()

## ----league-members---------------------------------------------------------------------
league_members()

## ----team-roster-all--------------------------------------------------------------------
team_roster(scoringPeriodId = 1)

## ----tidy-matchups----------------------------------------------------------------------
tidy_matchups(scoringPeriodId = 1)

## ----league-messages--------------------------------------------------------------------
league_messages(scoringPeriodId = 1)

## ----transaction-counter----------------------------------------------------------------
transaction_counter()

## ----draft-recap------------------------------------------------------------------------
draft_recap()

## ----roster-moves-----------------------------------------------------------------------
recent_activity(scoringPeriodId = 1)

## ----all-players------------------------------------------------------------------------
list_players(limit = 10)

## ----live-scoring-----------------------------------------------------------------------
live_scoring()

## ----league-standings-------------------------------------------------------------------
league_standings()

