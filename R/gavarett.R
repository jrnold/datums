#' Gavarett's data on sex ratios of legitimate and illegitimate births
#' 
#' Jules Gavarett's data on the sex ratios of legitimate and
#' illegitimate births for France, 1824-1825.
#' This analysis was an early example of a significance test.
#' 
#' @format A data frame with 4 rows and 3 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{female} \tab \code{"integer"} \tab 1 if female, 0 if male. \cr
#' \code{legitimate} \tab \code{"integer"} \tab 1 if a "legitimate birth", 0 if a "illegitimate birth" \cr
#' \code{count} \tab \code{"integer"} \tab Counts of births \cr
#' }
#' 
#' @source Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 77-79
#' 
#' @references Stigler, S. M. (2016) \emph{The Seven Pillars of Statistical Wisdom}
#' 
#' @references Gavarett, J. (1840) \emph{Principes Generaux de Statistique Medicale}. Paris: Bechet jenue et Labe.
#' 
#' @seealso \code{\link[HistData]{Arbuthnot}} for another similar, early significance test.
"gavarett"