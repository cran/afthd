% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lgstbymv.R
\name{lgstbymv}
\alias{lgstbymv}
\title{Multivariate estimates of AFT model with log logistic distribution using MCMC.}
\usage{
lgstbymv(m, n, STime, Event, nc, ni, data)
}
\arguments{
\item{m}{Starting column number of covariates of study from high dimensional entered data.}

\item{n}{Ending column number of covariates of study from high dimensional entered data.}

\item{STime}{name of survival time in data.}

\item{Event}{name of event in data. 0 is for censored and 1 for occurrence of event.}

\item{nc}{number of MCMC chain.}

\item{ni}{number of MCMC iteration to update the outcome.}

\item{data}{High dimensional gene expression data that contains event status, survival time and and set of covariates.}
}
\value{
Data frame is containing mean, sd, n.eff, Rhat and credible intervals (2.5\%, 25\%, 50\%, 75\% and 97.5\%) for beta's, sigma, tau and deviance of the model for the selected covariates. beta[1] is for intercept and others are for covariates (which is/are chosen as columns in data). sigma is the scale parameter of the distribution.
}
\description{
Provides estimate of AFT model with log logistic distribution using MCMC for multivariable (maximum 5 covariates of column at a time) in high dimensional gene expression data. It also deals covariates with missing values.
}
\details{
This function deals covariates (in data) with missing values. Missing value in any column (covariate) is replaced by mean of that particular covariate.
AFT model is log-linear regression model for survival time \eqn{ T_1},\eqn{ T_{2}},..,\eqn{T_{n}}.
i.e., \deqn{log(T_i)= x_i'\beta +\sigma\epsilon_i ;~\epsilon_i \sim F_\epsilon (.)~which~is~iid }
Where \eqn{ F_\epsilon } is known cdf which is defined on real line.
When baseline distribution is logistic then T follows log logistic distribution.
\deqn{ T \sim Log-Logis(x'\beta,\sqrt{\tau)} }
}
\examples{
##
data(hdata)
lgstbymv(10,12,STime="os",Event="death",5,100,hdata)
##
}
\references{
Prabhash et al(2016) <doi: 10.21307/stattrans-2016-046>
}
\seealso{
wbysmv, lgnbymv, lgstbyuni
}
\author{
Atanu Bhattacharjee, Gajendra Kumar Vishwakarma and Pragya Kumari
}
