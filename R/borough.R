#' Borough's 1580 data for the variation of the needle
#'
#' 
#' William Borough's data for readings of the variation between magnetic and
#' 
#' true north using the Sun's taken at different times of the day at
#' 
#' the Limehouse lighthouse, not far from the Greenwich Meridian.
#' 
#' These readings was published in \emph{A Discours of the Variation of the Campas, or Maneticall Needle}.
#' 
#' 
#' 
#'
#' A data frame with 4 columns and 9 rows:
#' \describe{
#'  \item{ \code{ elevation }}{ \code{ integer }. Elevation of the Sun in degrees }
#'  \item{ \code{ variation_am }}{ \code{ numeric }. Difference between the shadow of the Sun before noon and the compass north. }
#'  \item{ \code{ variation_pm }}{ \code{ numeric }. Difference between the shadow of the Sun after noon and the compass north. }
#'  \item{ \code{ variation_north }}{ \code{ numeric }. Variation between true and magnetic north. }
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
#' 
#' @source
#' Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 20
#' 
"borough"