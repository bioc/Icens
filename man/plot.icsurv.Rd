\name{plot.icsurv}
\alias{plot.icsurv}
\title{ A plot method for the estimates produced by the estimation
  methods in Icens. }
\description{
  Procduces nice plots of the estimated NPMLE.
}
\usage{
plot.icsurv(x, type="eq", surv=FALSE, bounds=FALSE, shade=3, density=30,
angle=45, lty=1, new=TRUE, xlab="Time", ylab="Probability", main="GMLE",
ltybnds=2, ...)
}
\arguments{
  \item{x}{ The estimate of the NPMLE. }
  \item{type}{ Three options, "eq" for equivalence call, "gw" for the
    Groeneboom-Wellner estimate, and "lc" for the left-continuous estimate. }
  \item{surv}{ ... } %%FIXME
  \item{bounds}{ ... } %% FIXME
  \item{shade}{ ... } %% FIXME
  \item{density}{ ... } %% FIXME
  \item{angle}{ ... } %%%FIXME
  \item{lty}{ ...  } %% FIXME
  \item{new}{ Boolean value }
  \item{xlab}{ Label for the x axis }
  \item{ylab}{ Label for the y axis }
  \item{main}{ Title for the plot }
  \item{ltybnds}{ ......} %%FIXME
  \item{\dots}{ Additional arguments passed to the function}
}

\value{
  No value is returned. A plot of the NPMLE is made on the active
  graphics device.
}

\author{Alain Vandal and Robert Gentleman.  }

\seealso{\code{\link{VEM}}, \code{\link{ISDM}}, \code{\link{EMICM}},
  \code{\link{PGM}}  }

\examples{
    data(cosmesis)
    csub1 <- subset(cosmesis, subset=Trt==0, select=c(L,R))
    e1 <- VEM(csub1)
    par(mfrow=c(2,2))
    plot(e1)
    data(pruitt)
    e2 <- EM(csub1)
    plot(e2)
    e3 <- PGM(csub1)
    plot(e3)
    e4 <- EMICM(csub1)
    plot(e4)
}
\keyword{hplot}
