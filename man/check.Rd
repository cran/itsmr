\name{check}
\Rdversion{1.1}
\alias{check}

\title{
Check for causality and invertibility
}

\description{
Check for causality and invertibility
}

\usage{
check(a)
}

\arguments{
\item{a}{ARMA model}
}

\value{
None
}

\examples{
a = specify(ar=c(0,0,.99))
check(a)
}
