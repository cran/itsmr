\name{autofit}
\Rdversion{1.1}
\alias{autofit}

\title{
Find the best model from a range of possible ARMA models
}

\description{
Find the best model from a range of possible ARMA models
}

\usage{
autofit(x, p = 0:5, q = 0:5)
}

\arguments{
\item{x}{Data vector (typically residuals from \code{Resid})}
\item{p}{Range of AR orders}
\item{q}{Range of MA orders}
}

\details{
Tries all combinations of \code{p} and \code{q} and returns the
model with the lowest AICC.
The arguments \code{p} and \code{q} should be small ranges as this function
can be slow otherwise.
The innovations algorithm is used to estimate white noise variance.
}

\value{
Returns an ARMA model consisting of a list with the following components.
\item{phi}{AR coefficients}
\item{theta}{MA coefficients}
\item{sigma2}{White noise variance}
\item{aicc}{Akaike information criterion corrected}
\item{se.phi}{Standard errors for the AR coefficients}
\item{se.theta}{Standard errors for the MA coefficients}
}

\seealso{
\code{\link{arma}}
}

\examples{
xv = c("diff",1)
e = Resid(dowj,xv)
a = autofit(e)
print(a)
}
