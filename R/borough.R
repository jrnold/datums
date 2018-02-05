#' Magnetic Variation in England in 1580
#' 
#' William Borough's data for readings of the variation between magnetic and
#' true north using the Sun's taken at different times of the day at
#' the Limehouse lighthouse, not far from the Greenwich Meridian.
#' These readings was published in \emph{A Discours of the Variation of the Campas, or Magneticall Needle}.
#' 
#' @format A data frame with 9 rows and 4 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{elevation} \tab \code{"integer"} \tab Elevation of the Sun in degrees \cr
#' \code{variation_am} \tab \code{"numeric"} \tab Difference between the shadow of the Sun before noon and the compass north. \cr
#' \code{variation_pm} \tab \code{"numeric"} \tab Difference between the shadow of the Sun after noon and the compass north. \cr
#' \code{variation_north} \tab \code{"numeric"} \tab Variation between true and magnetic north. \cr
#' }
#' 
#' @source Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 20
#' 
#' @references Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}
#' 
#' @seealso \code{gellibrand} and \code{db1668} for other datasets relevant to the history
#' of the mean.
"borough"