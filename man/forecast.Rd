\name{forecast}
\Rdversion{1.1}
\alias{forecast}

\title{
Forecast future values
}

\description{
Forecast future values
}

\usage{
forecast(x, xv, a, h = 10, opt = 2, alpha = 0.05)
}

\arguments{
\item{x}{Data vector}
\item{xv}{Transform vector}
\item{a}{ARMA model}
\item{h}{Steps ahead}
\item{opt}{Display option (0 silent, 1 tabulate, 2 plot and tabulate)}
\item{alpha}{Level of significance}
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

All of the transformations are inverted before the forecast
results are displayed.
}

\value{
Returns the following list invisibly.
\item{pred}{Predicted values}
\item{se}{Standard errors (not included if there is a log transform)}
\item{l}{Lower bounds (95\% confidence interval)}
\item{u}{Upper bounds}
}

\seealso{
\code{\link{arma}}
\code{\link{Resid}}
\code{\link{test}}
}

\examples{
xv = c("log","season",12,"trend",1)
e = Resid(wine,xv)
a = arma(e,1,1)
forecast(wine,xv,a)
}
