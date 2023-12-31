% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AHPtools.R
\name{improveCR}
\alias{improveCR}
\title{Improve the CR consistency of a PCM}
\usage{
improveCR(PCM, typePCM = TRUE)
}
\arguments{
\item{PCM}{A pairwise comparison matrix}

\item{typePCM}{boolean flag indicating if the first argument is a PCM or a
vector of upper triangular elements}
}
\value{
A list of 4 elements, suggested PCM, a boolean for the CR
consistency of the input PCM, the CR consistency value, a boolean for the
CR consistency of the suggested PCM, the CR consistency value of the
suggested PCM
}
\description{
For an input pairwise comparison matrix, PCM that is
inconsistent, this function returns a consistent PCM if possible,
with the relative preference for its alternatives as close as
possible to the original preferences, as in the principal right eigenvector.
}
\examples{
CR.suggest2 <- improveCR(matrix(
                 c(1,1/4,1/4,7,1/5, 4,1,1,9,1/4, 4,1,1,8,1/4,
                 1/7,1/9,1/8,1,1/9, 5,4,4,9,1), nrow=5, byrow=TRUE))
CR.suggest2
CR.suggest2a <- improveCR(c(1/4,1/4,7,1/5, 1,9,1/4, 8,1/4, 1/9),
typePCM=FALSE)
CR.suggest2a
CR.suggest3 <- improveCR(matrix(
                 c(1,7,1,9,8, 1/7,1,1/6,7,9, 1,6,1,9,9, 1/9,1/7,1/9,1,5,
                 1/8,1/9,1/9,1/5,1), nrow=5, byrow=TRUE))
CR.suggest3
}
