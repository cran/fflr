% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roster.R
\name{team_roster}
\alias{team_roster}
\title{Fantasy team rosters}
\usage{
team_roster(
  leagueId = ffl_id(),
  leagueHistory = FALSE,
  scoringPeriodId = NULL,
  ...
)
}
\arguments{
\item{leagueId}{Numeric league ID or ESPN fantasy page URL. Defaults to
\code{getOption("fflr.leagueId")}. Function fails if no ID is found.}

\item{leagueHistory}{logical; Should the \code{leagueHistory} version of the API
be called? If \code{TRUE}, a list of results is returned, with one element for
each historical year of the league.}

\item{scoringPeriodId}{Integer week of NFL season. By default, \code{NULL} will
use the current week (see \code{\link[=ffl_week]{ffl_week()}}). Scoring periods are always one
week in length, whereas matchups might be longer.}

\item{...}{Additional queries passed to \code{\link[httr:GET]{httr::GET()}}. Arguments are
converted to a named list and passed to \code{query} alongside \code{view}.}
}
\value{
A dataframe (or list) with league teams.
}
\description{
The roster of all teams in a league.
}
\examples{
team_roster(leagueId = "42654852", scoringPeriodId = 1)
}
\seealso{
Other roster functions: 
\code{\link{best_roster}()},
\code{\link{roster_score}()},
\code{\link{start_roster}()}
}
\concept{roster functions}
