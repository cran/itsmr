\name{ar.inf}
\Rdversion{1.1}
\alias{ar.inf}

\title{
Compute AR infinity coefficients
}

\description{
Compute AR infinity coefficients
}

\usage{
ar.inf(a, n = 50)
}

\arguments{
\item{a}{ARMA model}
\item{n}{Order}
}

\value{
Returns a vector of length \code{n+1} to accomodate coefficient 0 at index 1.
}

\seealso{
\code{\link{ma.inf}}
}

\examples{
a = yw(Sunspots,2)
ar.inf(a)
}
