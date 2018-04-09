#' Yule and Kendall's nonsense correlations
#' 
#' Data on the number of radio receiver licenses in the United Kingdom,
#' 1927-1937 and the number of notified mental defectives per 10,000
#' in the United Kingdom were used by Udny Yule and Maurice Kendall in
#' \emph{An Introduction to the Theory of Statistics} to illustrate
#' what they called "nonsense correlations".
#' Tufte updated these variable with the number of letters in the first name
#' of the US president for those years.
#' 
#' @format A data frame with 14 rows and 4 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{year} \tab \code{"integer"} \tab Year \cr
#' \code{radio_licenses} \tab \code{"numeric"} \tab Number of radio receiver licenses in the United Kingdom, 1927-1937 \cr
#' \code{mental_defectives} \tab \code{"integer"} \tab Number of notified "mental defectives" per 10,000 in the United Kingdom
#'  \cr
#' \code{president} \tab \code{"character"} \tab First name of the U.S. President \cr
#' }
#' 
#' @source Tufte, Edward R. 1974. \emph{Data Analysis for Politics and Policy}. Prentice Hall.
#' 
#' @references Tufte, Edward R. 1974. \emph{Data Analysis for Politics and Policy}. Prentice Hall.
#' 
#' @references Yule, G. Udny, and M.G. Kendall. 1950. \emph{An Introduction to the Theory of Statistics}. 14th ed. London:Charles Griffin. p. 315-16.
"nonsense"
