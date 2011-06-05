\name{Resid}
\Rdversion{1.1}
\alias{Resid}

\title{
Compute residuals
}

\description{
Compute residuals
}

\usage{
Resid(x, xv = NULL, a = NULL)
}

\arguments{
\item{x}{Data vector}
\item{xv}{Transform vector}
\item{a}{ARMA model}
}

\details{
The transform vector can be \code{NULL} for none.
Otherwise \code{xv} is a vector that specifies a sequence of
transform functions.

Example:

\code{xv = c("log","season",12,"trend",1)}

The above tansform vector
takes the log of the data, then subtracts a seasonal component
of period 12, then subtracts a linear trend component.

There are five functions from which to choose.
\tabular{ll}{
\code{diff}\tab
Difference the data. Has a single argument, the lag.
\cr
\code{hr}\tab
Subtract harmonic components. Has one or more
arguments, each specifying the number of observations per harmonic.
\cr
\code{log}\tab
Take the log of the data, has no arguments.
\cr
\code{season}\tab
Subtract a seasonal component.
Has a single argument, the number of observations per season.
\cr
\code{trend}\tab
Subtract a trend component.
Has a single argument, the order of the trend
(1 linear, 2 quadratic, etc.)
}

At the end of the transform vector there is an implied subtraction of
the mean operation.
Hence the resulting time series always has zero mean.
}

\value{
Returns a vector of residuals the same length as \code{x}.
}

\seealso{
\code{\link{test}}
}

\examples{
xv = c("log","season",12,"trend",1)
e = Resid(wine,xv)

a = arma(e,1,1)
ee = Resid(wine,xv,a)
}
