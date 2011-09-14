\name{itsmr-package}
\Rdversion{1.1}
\alias{itsmr-package}
\alias{itsmr}
\docType{package}

\title{
Time series analysis package for students
}

\description{
 This package provides a subset of the
 functionality found in the Windows-based program ITSM.
 The intended audience is students using the textbook
 \emph{Introduction to Time Series and Forecasting}
 by Peter J. Brockwell and Richard A. Davis.
}

\details{
\tabular{ll}{
Package: \tab itsmr\cr
Type: \tab Package\cr
Version: \tab 1.4\cr
Date: \tab 2011-09-14\cr
License: \tab Unlimited\cr
LazyLoad: \tab yes\cr
}
}

\author{
George Weigt\cr
Maintainer: George Weigt <g808391@gmail.com>
}

\references{
Brockwell, Peter J., and Richard A. Davis.
\emph{Introduction to Time Series and Forecasting.}
2nd ed. Springer, 2002.
A student version of ITSM is included with the textbook.
}

\keyword{ package }

\examples{
plotc(wine)

## Define a suitable transformation of the data
xv = c("log","season",12,"trend",1)

## Obtain residuals and check for stationarity
e = Resid(wine,xv)
test(e)

## Define a suitable ARMA model
a = arma(e,p=1,q=1)

## Obtain residuals and check for white noise
ee = Resid(wine,xv,a)
test(ee)

## Forecast future values
forecast(wine,xv,a)
}
