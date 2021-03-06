\name{nlar methods}
\alias{nlar-methods}
\alias{AIC.nlar}
\alias{coef.nlar}
\alias{fitted.nlar}
\alias{mse.nlar}
\alias{MAPE.nlar}
\alias{print.nlar}
\alias{residuals.nlar}
\alias{summary.nlar}
\alias{plot.nlar}
\alias{toLatex.nlar}
\title{nlar methods}
\description{
Generic \sQuote{nlar} methods. Method \sQuote{nlar} is described in a separate page: \code{\link{predict.nlar}}
}
\usage{
\method{AIC}{nlar}(object, k=2,\dots)
\method{coef}{nlar}(object, \dots)
\method{fitted}{nlar}(object, \dots)
\method{MAPE}{nlar}(object, \dots)
\method{mse}{nlar}(object, \dots)
\method{print}{nlar}(x, digits = max(3, getOption("digits") - 3), \dots)
\method{residuals}{nlar}(object, \dots)
\method{summary}{nlar}(object, \dots)
\method{plot}{nlar}(x, ask=interactive(), \dots)
\method{toLatex}{nlar}(object, digits, label, \dots)
}

\arguments{
  \item{x, object}{ fitted \sQuote{nlar} object }
  \item{ask}{ graphical option. See \code{\link{par}}}
  \item{digits}{For print method, see \code{\link{printCoefmat}}.}
  \item{k}{ numeric, the penalty per parameter to be used; the default k = 2 is the classical AIC}
  \item{label}{LaTeX label passed to the equation}
  \item{\dots}{ further arguments to be passed to and from other methods }
}
\details{
\describe{
	\item{MAPE}{ Mean Absolute Percent Error }
	\item{mse}{ Mean Square Error }
	\item{plot}{ Diagnostic plots }
}
}
\author{ Antonio, Fabio Di Narzo }
\examples{
x <- log10(lynx)
mod.setar <- setar(x, m=2, thDelay=1, th=3.25)
mod.setar
AIC(mod.setar)
mse(mod.setar)
MAPE(mod.setar)
coef(mod.setar)
summary(mod.setar)

e <- residuals(mod.setar)
e <- e[!is.na(e)]
plot(e)
acf(e)

plot(x)
lines(fitted(mod.setar), lty=2)
legend(x=1910, y=3.9,lty=c(1,2), legend=c("observed","fitted"))

plot(mod.setar)
}
\seealso{
\code{\link{availableModels}} for listing all currently available models.
}
\keyword{ ts }
