% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.markovMSM.R
\name{summary.markovMSM}
\alias{summary.markovMSM}
\title{Summarizing fits of "markovMSM" class.}
\usage{
\method{summary}{markovMSM}(object, ...)
}
\arguments{
\item{object}{A object of "markovMSM" with the results of the AUC global or
local tests.}

\item{...}{For future methods.}
}
\value{
The p-values of the AUC global and Local tests. Further information
on the test are also given.
}
\description{
Returns the p-values of the AUC global and Local tests. Further
information
on the test are also given.
}
\examples{
library(markovMSM)
data("colonMSM")
db_wide<-colonMSM
positions<-list(c(2, 3), c(3), c())
namesStates =  c("Alive", "Rec",  "Death")
tmat <-transMatMSM(positions, namesStates)
timesNames = c(NA, "time1","Stime")
status=c(NA, "event1","event")
trans = tmat
db_long<- prepMSM(data=db_wide, trans, timesNames, status)
times=365
\donttest{
res<-AUC.test(data = db_long, times=times, from=2, to=3, type='local', 
replicas=2, tmat = tmat)
res$localTest
summary(res)
}
}
\references{
Soutinho G, Meira-Machado L (2021). Methods for checking the 
Markov condition in multi-state survival data. \emph{Computational Statistics}.
}
\author{
Gustavo Soutinho and Luis Meira-Machado.
}
