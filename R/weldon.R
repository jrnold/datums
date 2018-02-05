#' Weldon's Dice
#' 
#' Frank Weldon threw 12 dice 26,306 times and for each throw counted the number of dice that showed a five or six. Pearson analyzed this data in 1900.
#' 
#' @format A data frame with 13 rows and 4 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{n} \tab \code{"integer"} \tab Number of dice showing five or six in the throw of 12 dice.
#'  \cr
#' \code{observed} \tab \code{"integer"} \tab Number observed in Weldon's data \cr
#' \code{theoretical} \tab \code{"integer"} \tab Theoretical values assuming \eqn{\theta = 1/3}{theta = 1/3}.
#'  \cr
#' \code{pearson} \tab \code{"integer"} \tab Pearson's corrected theoretical values using \eqn{\theta = 0.3377}{theta = 0.3377}.
#'  \cr
#' }
#' 
#' @source Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 184
#' 
#' @references Stigler, S. M. (2016) \emph{The Seven Pillars of Statistical Wisdom}.
#' 
#' @references Pearson, K. (1900) \dQuote{On the criterion that a given system of deviations from the probable in the case of a correlated system of variables is such that it can be reasonably supposed to have arisen from random sampling}, \emph{Philosophical Magazine}, pp. 157--175.
"weldon"