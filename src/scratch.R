library(tidyverse)

r2R <- function(r, mu_gamma = 4.7, sd_gamma = 2.9){
	stopifnot(is.numeric(r))
	stopifnot(is.numeric(mu_gamma))
	stopifnot(is.numeric(sd_gamma) && sd_gamma > 0)

	k <- (sd_gamma / mu_gamma) ^ 2

	R <- (1 + k * r *  mu_gamma) ^ (1 / k)

	return(R)

}

mus <- seq(2,6,.1)

do.call(rbind, lapply(mus, function(x) r2R(.2, x)))
