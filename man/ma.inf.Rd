\name{ma.inf}
\Rdversion{1.1}
\alias{ma.inf}

\title{
Compute MA infinity coefficients
}

\description{
Compute MA infinity coefficients
}

\usage{
ma.inf(a, n = 50)
}

\arguments{
\item{a}{ARMA model}
\item{n}{Order}
}

\value{
Returns a vector of length \code{n+1} to accomodate coefficient 0 at index 1.
}

\seealso{
\code{\link{ar.inf}}
}

\examples{
xv = c("diff",12)
e = Resid(deaths,xv)
a = arma(e,1,1)
ma.inf(a,10)
}
