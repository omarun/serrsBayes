% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{getVoigtParam}
\alias{getVoigtParam}
\title{Compute the pseudo-Voigt mixing ratio for each peak.}
\usage{
getVoigtParam(scale_G, scale_L)
}
\arguments{
\item{scale_G}{Vector of standard deviations \eqn{\sigma_j} of the Gaussian components.}

\item{scale_L}{Vector of scale parameters \eqn{\phi_j} of the Lorentzian components.}
}
\value{
The Voigt mixing weights for each peak, between 0 (Gaussian) and 1 (Lorentzian).
}
\description{
Calculates the mixing parameter \eqn{\eta_j} from the scales of the Gaussian/Lorentzian
components.
}
\details{
First, calculate a polynomial average of the scale parameters according to
the approximation of Thompson et al. (1987):
\deqn{f_{G,L} = (\sigma_j^5 + 2.69\sigma_j^4\phi_j + 2.42\sigma_j^3\phi_j^2 + 4.47\sigma_j^2\phi_j^3 + 0.07\sigma_j\phi_j^4 + \phi_j^5)^{1/5} }

Then the Voigt mixing parameter \eqn{\eta_j} is defined as:
\deqn{\eta_j = 1.36\frac{\phi_j}{f_{G,L}} - 0.47(\frac{\phi_j}{f_{G,L}})^2 + 0.11(\frac{\phi_j}{f_{G,L}})^3}
}
\references{
Thompson, Cox & Hastings (1987) "Rietveld refinement of Debye--Scherrer synchrotron X-ray data from \eqn{Al_2 O_3},"
J. Appl. Crystallogr. 20(2): 79--83, DOI: \href{https://doi.org/10.1107/S0021889887087090}{10.1107/S0021889887087090}
}
