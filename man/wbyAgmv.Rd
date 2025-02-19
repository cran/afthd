% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wbyAgmv.R
\name{wbyAgmv}
\alias{wbyAgmv}
\title{Multivariate estimates of AFT model with weibull distribution using MCMC that supports augmented data.}
\usage{
wbyAgmv(m, n, p, q, t, STime, Event, nc, ni, data)
}
\arguments{
\item{m}{Starting column number of covariates of study in data.}

\item{n}{Ending column number of covariates of study in data.}

\item{p}{starting row number for augumented data in entered data.}

\item{q}{last row number for augumented data in entered data}

\item{t}{time (same unit as STime in data) after which, estimated STime to be printed (for individuals p to q).}

\item{STime}{name of survival time in data}

\item{Event}{name of event in data.  0 is for censored and 1 for occurrence of event.}

\item{nc}{number of markov chain.}

\item{ni}{number of iteration for MCMC.}

\item{data}{High dimensional gene expression data that contains event status, survival time and and set of covariates.}
}
\value{
Posterior estimates of beta's, sigma , tau and deviance are their estimates mean, sd, credible intervals,number of efficient sample (n.eff) and  Rhat. beta's denotes posterior estimates of regression coefficient of the model. beta[1] is for intercept and others are for covariates (which is/are chosen as columns in data).'sigma' is the scale parameter of the distribution.
'STime' in output section provides estimated value of  STime="os" in data only for individual row number p to q.
'Overall_S' in output, provides an overall estimate of STime="os" in data for all individuals nrow(data).
 @import R2jags
}
\description{
Provides estimate of AFT model including Survival time for augmented data with weibull distribution using
MCMC for multivariable (maximum 5 covariates of column at a time) in high dimensional gene
expression data. It also deals covariates with missing values.
}
\details{
Here weibull distribution has been used for AFT model with MCMC.
This function deals covariates (in data) with missing values. Missing value in any column (covariate) is replaced by mean of that particular covariate.
}
\examples{
##
data(hdata)
wbyAgmv(9,13,p=560,q=565,t=200,STime="os",Event="death",2,10,hdata)
#
##
}
\references{
Prabhash et al(2016) <doi:10.21307/stattrans-2016-046>
}
\seealso{
wbysmv
}
\author{
Atanu Bhattacharjee, Gajendra Kumar Vishwakarma and Pragya Kumari
}
