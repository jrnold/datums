#' Magnetic Variation near Bristol, England on May 23, 1668
#' 
#' This is from a note published in the \emph{Transactions of the Royal Society} in 1668. The editor, Henry Oldenburg,  printed parts of a letter from "D.B." with five values of the magnetic variation near Bristol, England on May 23, 1668. This letter is notable in that he calculates the "mean of the true Variation", where "mean" refers to the arithmetic mean. It is referenced by Stigler as the first instance in which the term "mean" is used to refer to the arithmetical mean. D.B. reported a mean of 1 degree 27 minutes, rounding down from the arithmetic mean of 1 degree 28 minutes.
#' 
#' @format A data frame with 5 rows and 4 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{sun_altitude} \tab \code{"numeric"} \tab Sun's altitude in degrees \cr
#' \code{magnetic_azimuth} \tab \code{"numeric"} \tab Magnetic azimuth in degrees \cr
#' \code{sun_azimuth} \tab \code{"numeric"} \tab Sun's azimuth in degrees \cr
#' \code{variation} \tab \code{"numeric"} \tab Variation in degrees westerly, between true north (sun azimuth) and magnetic north (magnetic azimuth) \cr
#' }
#' 
#' @source Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}
#' 
#' @references Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 26
#' 
#' @seealso \code{gellibrand} and \code{borough} for other early datasets used to (almost) calculate means.
"db1668"
