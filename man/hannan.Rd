\name{hannan}
\Rdversion{1.1}
\alias{hannan}

\title{
Estimate ARMA coefficients using the Hannan-Rissanen algorithm
}

\description{
Estimate ARMA coefficients using the Hannan-Rissanen algorithm
}

\usage{
hannan(x, p, q)
}

\arguments{
\item{x}{Data vector (typically residuals from \code{Resid})}
\item{p}{AR order}
\item{q}{MA order (\code{q > 0})}
}

\details{
The innovations algorithm is used to estimate white noise variance.
}

\value{
Returns an ARMA model consisting of a list with the following components.
\item{phi}{Vector of AR coefficients (index number equals coefficient subscript)}
\item{theta}{Vector of MA coefficients (index number equals coefficient subscript)}
\item{sigma2}{White noise variance}
\item{aicc}{Akaike information criterion corrected}
\item{se.phi}{Standard errors for the AR coefficients}
\item{se.theta}{Standard errors for the MA coefficients}
}

\seealso{
\code{\link{arma}}
\code{\link{burg}}
\code{\link{ia}}
\code{\link{yw}}
}

\examples{
xv = c("diff",12)
e = Resid(deaths,xv)
a = hannan(e,1,1)
print(a)
}
