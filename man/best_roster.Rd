% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/best-roster.R
\name{best_roster}
\alias{best_roster}
\title{Optimal fantasy roster}
\usage{
best_roster(roster)
}
\arguments{
\item{roster}{A roster tibble from \code{\link[=team_roster]{team_roster()}}.}
}
\value{
A tibble of players on a roster.
}
\description{
The highest scoring 9 man roster using standard roster slots. In the future
this function may be adapted to take roster slots from \code{\link[=roster_settings]{roster_settings()}}.
}
\examples{
best_roster(team_roster(lid = 252353, week = 1)[[7]])
}
