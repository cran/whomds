% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SepRel_101.R
\name{SepRel_1.0.1}
\alias{SepRel_1.0.1}
\title{Separation Reliability: Person Separation Reliability}
\usage{
SepRel_1.0.1(pobject)
}
\arguments{
\item{pobject}{Object of class \code{ppar} (see \code{?eRm::person.parameter}).}
}
\value{
SepRel returns a list object of class eRm_SepRel containing:
\item{sep.rel}{the person separation reliability,}
\item{SSD.PS}{the squared standard deviation (i.e., total person variability),}
\item{MSE}{the mean square measurement error (i.e., model error variance).}
}
\description{
Copied from eRm::SepRel(), v1.0-1: This function calculates the proportion of person variance that is not due to error. The concept of person separation reliability is very similar to reliability indices such as Cronbach's alpha.
}
\details{
See full documentation at \url{https://www.rdocumentation.org/packages/eRm/versions/1.0-1/topics/Separation\%20Reliability}
}
\references{
Wright, B.D., and Stone, M.H. (1999). Measurement essentials. Wide Range Inc., Wilmington. (\url{https://www.rasch.org/measess/me-all.pdf} 28Mb).
}
\author{
Original code by Adrian Brügger (\email{Adrian.Bruegger@imu.unibe.ch}), adapted by Marco J. Maier in package \code{eRm} v1.0-1
}
