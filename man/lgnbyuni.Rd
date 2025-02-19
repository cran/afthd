% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lgnbyuni.R
\name{lgnbyuni}
\alias{lgnbyuni}
\title{Bayesian univariate analysis of AFT model with log normal distribution.}
\usage{
lgnbyuni(m, n, STime, Event, nc, ni, data)
}
\arguments{
\item{m}{Starting column number of covariates of study from high dimensional entered data.}

\item{n}{Ending column number of covariates of study from high dimensional entered data.}

\item{STime}{name of survival time in data}

\item{Event}{name of event in data. 0 is for censored and 1 for occurrence of event.}

\item{nc}{number of MCMC chain.}

\item{ni}{number of MCMC iteration to update the outcome.}

\item{data}{High dimensional gene expression data that contains event status, survival time and and set of covariates.}
}
\value{
Data frame is containing posterior estimates (Coef, SD, Credible Interval, Rhat, n.eff) of regression coefficient of selected covariates and deviance. Result shows together for all covariates chosen from column m to n.
}
\description{
Provides posterior estimates of AFT model with log normal distribution using Bayesian for univariate in high dimensional gene expression data. It also deals covariates with missing values.
}
\details{
This function deals covariates (in data) with missing values. Missing value in any column (covariate) is replaced by mean of that particular covariate.
AFT model is log-linear regression model for survival time \eqn{ T_1 },\eqn{ T_2 },..,\eqn{T_n }.
i.e., \deqn{log(T_i)= x_i'\beta +\sigma\epsilon_i ;~\epsilon_i \sim F_\epsilon (.)~which~is~iid }
Where \eqn{ F_\epsilon } is known cdf which is defined on real line.
When baseline distribution is normal then T follows log normal distribution.
\deqn{ T \sim LN(x'\beta,1/\tau) }
}
\examples{
##
data(hdata)
lgnbyuni(10,12,STime="os",Event="death",2,10,hdata)
##
}
\references{
Prabhash et al(2016) <doi:10.21307/stattrans-2016-046>
}
\seealso{
lgnbymv, wbysuni, lgstbyuni
}
\author{
Atanu Bhattacharjee, Gajendra Kumar Vishwakarma and Pragya Kumari
}
