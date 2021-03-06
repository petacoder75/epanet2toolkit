% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/patterns.r
\name{ENsetpattern}
\alias{ENsetpattern}
\title{Set all of the multiplier factors for a specific time pattern.}
\usage{
ENsetpattern(index, factors)
}
\arguments{
\item{index}{An integer, the pattern index.}

\item{factors}{A numeric vector, the multiplier factors for the entire pattern.}
}
\description{
\code{ENsetpattern} sets all of the multiplier factors for a specific time pattern.
}
\details{
Pattern indexes are consecutive integers starting from 1.

  Use this function to redefine (and resize) a time pattern all at once; use 
  \code{ENsetpatternvalue} to revise pattern factors in specific time periods of a pattern.
}
\examples{
# path to Net1.inp example file included with this package
inp <- file.path( find.package("epanet2toolkit"), "extdata","Net1.inp")  
ENopen( inp, "Net1.rpt")
ENsetpattern(1, 1:10)		
ENgetpatternvalue(1,1)
ENgetpatternvalue(1,10)
ENclose()
}
\seealso{
\code{ENgetpatternindex}, \code{ENgetpatternlen}, 
  \code{ENgetpatternvalue}, \code{ENsetpatternvalue}
}
