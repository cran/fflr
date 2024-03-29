#' Professional games
#'
#' Data on the status of NFL games, including scores and odds, kickoff time,
#' and broadcast information.
#'
#' @return A data frame of NFL events.
#' @examples
#' pro_events()
#' @family professional football functions
#' @export
pro_events <- function() {
  dat <- try_json("https://site.api.espn.com/apis/fantasy/v2/games/ffl/games")
  if (length(dat$events) == 0) {
    message("No scheduled professional football events")
    return(
      tibble(
        id = character(),
        date = ffl_timestamp(integer()),
        timeValid = logical(),
        period = integer(),
        clock = character(),
        status = character(),
        summary = character()
      )
    )
  }
  out <- dat$events
  out$competitionId <- NULL
  out$uid <- NULL
  out$links <- NULL
  out$link <- NULL
  out$lastPlay <- NULL
  out$drive <- NULL
  out$scoringPlays <- NULL
  out$fullStatus <- NULL
  out$broadcasts <- NULL
  out$fantasySource <- NULL
  out$date <- ffl_timestamp(out$date)
  comp <- do.call("rbind", out$competitors)
  out$homeTeam <- pro_abbrev(comp$id[comp$homeAway == "home"])
  out$awayTeam <- pro_abbrev(comp$id[comp$homeAway == "away"])
  as_tibble(out)
}

#' Professional scores
#'
#' The tidy data frame of scores by team.
#'
#' @return A data frame of NFL scores.
#' @examples
#' pro_scores()
#' @export
pro_scores <- function() {
  dat <- try_json("https://site.api.espn.com/apis/fantasy/v2/games/ffl/games")
  if (length(dat$events) == 0) {
    message("No scheduled professional football events")
    return(
      tibble(
        id = character(),
        type = character(),
        homeAway = character(),
        abbreviation = character(),
        score = integer(),
        winner = logical(),
        record = character(),
        name = character(),
        lineup = list()
      )
    )
  }
  out <- do.call("rbind", dat$events$competitors)
  out$score[out$score == ""] <- NA
  out$score <- as.integer(out$score)
  as_tibble(out)
}
