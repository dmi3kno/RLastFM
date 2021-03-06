\name{user.getWeeklyAlbumChart}
\alias{user.getWeeklyAlbumChart}

\title{API call to user.getWeeklyAlbumChart} \description{API call to user.getWeeklyAlbumChart}

\usage{
user.getWeeklyAlbumChart(username, from = NA, to = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{from}{from, see \code{\link{user.getWeeklyChartList}}}
  \item{to}{to, see \code{\link{user.getWeeklyChartList}}}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{artist}{name of the artist}
  \item{album}{name of the album}
  \item{albmbid}{mbid for the album}
  \item{playcount}{reported playcount}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=279}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = user.getWeeklyChartList("monkeycatfm")
user.getWeeklyAlbumChart("monkeycatfm", from = dates[1,1], to = dates[1,2])$artist[1]
#NULL
}
