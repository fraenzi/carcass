\name{shapeparameter}
\alias{shapeparameter}
\title{
Shapeparameters of a beta-distribution from the mean, the lower and upper limit of the 95\% confidence or credible interval
}
\description{
The function returens the shapeparameters a ad b of a beta-distribution from the mean, the lower and upper limit of the 95\% confidence or credible interval.
The derivation from mean and se to the shapeparameters of a beta-distribution is done by the method of moments.
}
\usage{
shapeparameter(m, lwr=NA, upr=NA, se=NA)
}

\arguments{
  \item{m}{
mean
}
  \item{lwr}{
lower limit of the 95percent confidence/credible interval
}
  \item{upr}{
upper limit of the 95percent confidence/credible interval
}
  \item{se}{
standard error of the proportion
}
}
\details{
Either se or both lwr and upr has to be given. The result may be more reliable if se is given, since the calculation is based on se.
If the lwr and upr limits of the 95\% confidence interval are given, se is estimated as 1/4 times the width of the 95\% confidence interval.  
}

\value{
\item{a}{parameter a of a beta-distribution}
\item{b}{parameter b of a beta-distribution}
}
\references{
Gelman et al. (2004)
}
\author{
Fraenzi Korner-Nievergelt
}

\examples{

a <- shapeparameter(0.8, 0.72, 0.88)$a
b <- shapeparameter(0.8, 0.72, 0.88)$b
x <- seq(0, 1, by=0.01)
y <- dbeta(x, a, b)
plot(x, y, type="l")

}
\keyword{methods}
\keyword{misc}
