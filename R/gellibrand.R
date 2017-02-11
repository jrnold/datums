#' Gellibrand's 1635 data for the variation of the needle
#'
#' 
#' Henry Gellibrand's data for readings of the variation between magnetic and
#' 
#' true north using the Sun's taken at Deptford, England.
#' 
#' 
#' 
#' It is the first known use of the term "meane" (mean) to refer to a statistic.
#' 
#' However, what he calls the measures of magnetic variations which he calculates,
#' 
#' 4 degrees 5 minutes, is the mid-range of the data.
#' 
#' 
#' 
#'
#' A data frame with 5 columns and 11 rows:
#' \describe{
#'  \item{ \code{ afternoon }}{ \code{ logical }. Reading was taken in the afternoon }
#'  \item{ \code{ altitude }}{ \code{ numeric }. Altitude of the Sun in degreees }
#'  \item{ \code{ azim_mag }}{ \code{ numeric }. Magnetic azimuth in degrees }
#'  \item{ \code{ azim_sun }}{ \code{ numeric }. Azimuth of the Sun in degrees }
#'  \item{ \code{ variation }}{ \code{ numeric }. Variation between true and magnetic north in degrees }
#' 
#' }
#'
#'
#' @references
#' \itemize{
#' \item{ Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom} }
#' 
#' }
#'
#' @source
#' Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 24
"gellibrand"