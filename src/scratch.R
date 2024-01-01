library(tidyverse)

pgf_pois <- function(z) exp(2.5 * (z-1)) - z

pgf_pois(.1)
uniroot(pgf_pois, c(0, 1), lower = 0, upper = 0.999)$root


pgf_2 <- function(x, p = .01, L = 10, r = 2.2) {
	(1-p) * exp(r * (x - 1)) + p * x ^ L - x
}

uniroot(pgf_2, c(0, 1), lower = 0, upper = 0.999)$root

pgf_2(.1)

optim(.1, pgf_2, lower = 0, upper = 1, method = "L-BFGS-B")

optim(.1, pgf_pois, lower = 0, upper = 1, method = "L-BFGS-B")$par

r2R <- function(r, mu_gamma = 4.7, sd_gamma = 2.9) {
	stopifnot(is.numeric(r))
	stopifnot(is.numeric(mu_gamma))
	stopifnot(is.numeric(sd_gamma) && sd_gamma > 0)

	k <- (sd_gamma / mu_gamma) ^ 2

	R <- (1 + k * r *  mu_gamma) ^ (1 / k)

	return(R)

}

mus <- seq(2,6,.1)

do.call(rbind, lapply(mus, function(x) r2R(.2, x)))

library(nccovid)

remotes::install_github("medewitt/nccovid")

library(nccovid)

nccovid::epi_finalsize
