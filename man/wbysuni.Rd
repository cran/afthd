% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wbysuni.R
\name{wbysuni}
\alias{wbysuni}
\title{Posterior univariate estimates of AFT model with weibull distribution using MCMC.}
\usage{
wbysuni(m, n, STime, Event, nc, ni, data)
}
\arguments{
\item{m}{Starting column number of covariates of study from high dimensional entered data.}

\item{n}{Ending column number of covariates of study from high dimensional entered data.}

\item{STime}{name of survival time in data}

\item{Event}{name of event status in data. 0 is for censored and 1 for occurrence of event.}

\item{nc}{number of markov chain.}

\item{ni}{number of iteration for MCMC.}

\item{data}{High dimensional gene expression data that contains event status, survival time and and set of covariates.}
}
\value{
Data frame is containing posterior estimates (Coef, SD, Credible Interval, Rhat, n.eff) of regression coefficient for covariates and deviance. Result shows together for all covariates chosen from column m to n.
}
\description{
Provides posterior estimates of AFT model with weibull distribution using MCMC for univariate in high dimensional gene expression data.
It also deals covariates with missing values.
}
\details{
This function deals covariates (in data) with missing values. Missing value in any column (covariate) is replaced by mean of that particular covariate.
AFT model is log-linear regression model for survival time \eqn{ T_{1}},\eqn{ T_{2}},..,\eqn{T_{n}}.
i.e., \deqn{log(T_i)= x_i'\beta +\sigma\epsilon_i ;~\epsilon_i \sim F_\epsilon (.)~which~is~iid }
Where \eqn{ F_\epsilon } is known cdf which is defined on real line.
Here, when baseline distribution is extreme value then T follows weibull distribution.
To make interpretation of regression coefficients simpler, using extreme value distribution with median 0.
So using weibull distribution that leads to AFT model when
\deqn{ T \sim Weib(\sqrt{\tau},log(2)\exp(-x'\beta \sqrt{\tau})) }
}
\examples{
##
data(hdata)
wbysuni(9,13,STime="os",Event="death",1,10,hdata)
##
}
\references{
Prabhash et al(2016) <doi:10.21307/stattrans-2016-046>
}
\seealso{
pvaft, wbysmv, rglwbysu, wbyscrku
}
\author{
Atanu Bhattacharjee, Gajendra Kumar Vishwakarma and Pragya Kumari
}
