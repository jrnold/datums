#' Pauperism in England, 1871-1891 (Poor Law Unions)
#' 
#' Data on pauperism in England, 1871-1881, used in Udny Yule's 1899 paper.
#' This data frame contains Poor Law Union specific variables.
#' 
#' See \code{\link{pauperism_year}} for further description of the data
#' and the yearly pauperism statistics.
#' 
#' @format A data frame with 599 rows and 7 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{ID} \tab \code{"numeric"} \tab ID \cr
#' \code{Union} \tab \code{"character"} \tab Union \cr
#' \code{Region} \tab \code{"character"} \tab Region \cr
#' \code{County} \tab \code{"character"} \tab County \cr
#' \code{Type} \tab \code{"character"} \tab Yule's Rural/Urban Classification of Unions \cr
#' \code{BoothGroup} \tab \code{"character"} \tab Booth's Classification of Unions \cr
#' \code{BoothDensity} \tab \code{"numeric"} \tab Booth's Population Density \cr
#' }
#' 
#' @references Yule, G. U. (1899) \dQuote{An Investigation into the Causes of Changes in Pauperism in England, Chiefly During the Last Two Intercensal Decades (part I.)}. \emph{Journal of the Royal Statistical Society} \href{https://dx.doi.org/10.2307/2979889}{doi:10.2307/2979889}.
#' 
#' @references Plewis, I. (2015) \dQuote{Multiple regression, longitudinal data and welfare in the nineteenth century: reflections on Yule (1899)}, submitted to \emph{Journal of the Royal Statistical Society, Series A}.
#' 
#' @references Plewis, I. and Schmidt, E. (2015) \dQuote{Reconstructing G. Udny Yule’s 1899 pauperism dataset}, CMIST Report 2015-3
"pauperism_plu"
