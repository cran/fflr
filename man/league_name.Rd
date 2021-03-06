% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/league-settings.R
\name{league_name}
\alias{league_name}
\title{League name}
\usage{
league_name(lid = getOption("lid"), old = FALSE, ...)
}
\arguments{
\item{lid}{ESPN League ID, defaults to \code{getOption("lid")}. Use
\verb{options(lid = <League ID>)} to set your league ID; put that line in your
\code{.Rprofile} file to set the option at start up.}

\item{old}{If \code{FALSE} (default), return only the current season's data. If
\code{TRUE}, return a list with all prior seasons.}

\item{...}{Additional API query arguments. Use "week" and "year" as a
shorthand for "ScoringPeriodId" and "seasonId" respectively.}
}
\value{
A character vector.
}
\description{
League name
}
\examples{
league_name(252353)
}
