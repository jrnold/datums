#' Gellibrand's 1635 data for the variation of the needle
#' 
#' Henry Gellibrand's data for readings of the variation between magnetic and
#' true north using the Sun's taken at Deptford, England.
#' 
#' It is the first known use of the term "meane" (mean) to refer to a statistic.
#' However, what he calls the measures of magnetic variations which he calculates,
#' 4 degrees 5 minutes, is the mid-range of the data.
#' 
#' @format A data frame with 11 rows and 5 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{afternoon} \tab \code{"logical"} \tab Reading was taken in the afternoon \cr
#' \code{altitude} \tab \code{"numeric"} \tab Altitude of the Sun in degrees \cr
#' \code{azim_mag} \tab \code{"numeric"} \tab Magnetic azimuth in degrees \cr
#' \code{azim_sun} \tab \code{"numeric"} \tab Azimuth of the Sun in degrees \cr
#' \code{variation} \tab \code{"numeric"} \tab Variation between true and magnetic north in degrees \cr
#' }
#' 
#' @source Stigler, S. M. (2016) \emph{The Seven Pillars of Statistical Wisdom}, p. 24
#' 
#' @references Stigler, S. M. (2016) \emph{The Seven Pillars of Statistical Wisdom}
#' 
#' @seealso \code{db1668} and \code{borough} for other early datasets used to (almost) calculate means.
"gellibrand"