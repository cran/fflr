% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stat-correct.R
\name{stat_correct}
\alias{stat_correct}
\title{Stat corrections}
\usage{
stat_correct(date = Sys.Date())
}
\arguments{
\item{date}{A date in the scoring week to return. Defaults to system date.}
}
\value{
A tibble of player corrections.
}
\description{
Weekly retroactive stat corrections by player.
}
\examples{
stat_correct()
}
