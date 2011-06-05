\name{sim}
\Rdversion{1.1}
\alias{sim}

\title{
Generate synthetic observations
}

\description{
Generate synthetic observations
}

\usage{
sim(a, n)
}

\arguments{
\item{a}{ARMA model}
\item{n}{Number of synthetic observations required}
}

\details{
This is a wrapper function, the standard R function \code{arima.sim}
does the actual simulation.
}

\value{
Returns a vector of \code{n} synthetic observations.
}

\examples{
a = specify(ar=c(0,0,.99))
x = sim(a,60)
plotc(x)
}
