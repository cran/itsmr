\name{season}
\Rdversion{1.1}
\alias{season}

\title{
Estimate seasonal component
}

\description{
Estimate seasonal component
}

\usage{
season(x, d)
}

\arguments{
\item{x}{Data vector}
\item{d}{Number of observations per season}
}

\value{
Returns a vector the same length as \code{x}.
Subtract from \code{x} to obtain residuals.
}

\seealso{
\code{\link{trend}}
}

\examples{
y = season(deaths,12)
plotc(deaths,y)
}
