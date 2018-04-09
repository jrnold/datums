#' County death rates for six English counties, 1876-1883
#' 
#' County deaths for six English counties, 1876--1883, from the 1883 registrar-general's report. This data was analyzed in Edgeworth (1885).
#' 
#' @format A data frame with 48 rows and 3 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{county} \tab \code{"character"} \tab County name \cr
#' \code{year} \tab \code{"integer"} \tab Year \cr
#' \code{death_rate} \tab \code{"numeric"} \tab Annual deaths per thousand in that county \cr
#' }
#' 
#' @source Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 98
#' 
#' @references Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 26
#' 
#' @references Edgeworth, Francis Ysidro. 1885. \dQuote{On Methods of Ascertaining Variations in the Rate of Births, Deaths and Marriages}. \emph{Journal of the [Royal] Statistical Society}. 48: 628-649
"countydeaths"
