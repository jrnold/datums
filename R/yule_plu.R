#' Pauperism in England, 1871-1891 (Poor Law Unions)
#'
#' 
#' Data on pauparism used in the 1899 article, \dQuote{An Investigation into the Causes of Changes in Pauperism in England},
#' 
#' by Udny Yule, which is the first use of multiple regression.
#' 
#' The data contains data on pauprism, the proportion of paupers provided for at home
#' 
#' vs. the work house, population, and population over 65.
#' 
#' 
#' 
#'
#' A data frame with 7 columns and 599 rows:
#' \describe{
#'  \item{ \code{ ID }}{ \code{ numeric }. ID }
#'  \item{ \code{ Union }}{ \code{ character }. Union }
#'  \item{ \code{ Region }}{ \code{ character }. Region }
#'  \item{ \code{ County }}{ \code{ character }. County }
#'  \item{ \code{ Type }}{ \code{ character }. Yule's Rural/Urban Classification of Unions }
#'  \item{ \code{ BoothGroup }}{ \code{ character }. Booth's Classification of Unions }
#'  \item{ \code{ BoothDensity }}{ \code{ numeric }. Booth's Population Density }
#' 
#' }
#'
#'
#' @references
#' \itemize{
#' \item{ Yule, G. Udny. 1899. \dQuote{An Investigation into the Causes of Changes in Pauperism in England, Chiefly During the Last Two Intercensal Decades (part I.)}. \emph{Journal of the Royal Statistical Society} \href{https://dx.doi.org/10.2307/2979889}{doi:10.2307/2979889}. }
#' \item{ Plewis, I. 2015. \dQuote{Multiple regression, longitudinal data and welfare in the nineteenth century: reflections on Yule (1899)}, submitted to \emph{Journal of the Royal Statistical Society, Series A}. }
#' \item{ Plewis, I. and Schmidt, E. 2015. \dQuote{Reconstructing G. Udny Yule’s 1899 pauperism dataset}, CMIST Report 2015-3 }
#' 
#' }
#'
#' 
"yule_plu"