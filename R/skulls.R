#' Correlations between length and breadth of skulls, by sex
#' 
#' The data consist of the correlations between the length and
#' breadth of skulls in the Paris Catacombs gathered by
#' C. D. Fawcett, though neither a citation nor the raw data is provided in the article.
#' 
#' This is a dataset mentioned by Pearson as an example of the phenomena now known
#' as Simpson's Paradox and what he calls "spurious correlation":
#' 
#' \dQuote{We are thus forced to the conclusion that a mixture of heterogeneous groups,
#' each of which exhibits in itself no organic correlation, will exhibit a greater or less
#' amount of correlation. This correlation may properly be called spurious, yet as it
#' is almost impossible to guarantee the absolute homogeneity of any community, our
#' results for correlation are always liable to an error, the amount of which cannot be
#' foretold. To those who persist in looking upon all correlation as cause and effect,
#' the fact that correlation can be produced between two quite uncorrelated characters
#' A and B by taking an artificial mixture of two closely allied races, must come rather
#' as a shock.} (Pearson  )
#' 
#' The probable error of the correlation coefficient is
#' \deqn{PE = 0.6745 \left( \frac{1 - r^2}{\sqrt{n}} \right)}{PE = 0.6745 (1 - r^2 / sqrt(n))}.
#' 
#' @format A data frame with 3 rows and 4 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{sex} \tab \code{"character"} \tab Either "male", "female", or "total"
#'  \cr
#' \code{n} \tab \code{"integer"} \tab Number of observations \cr
#' \code{correlation} \tab \code{"numeric"} \tab Pearson's correlation coefficient
#'  \cr
#' \code{probable_error} \tab \code{"numeric"} \tab The probable error of the correlation coefficient, which is half the interquartile range.
#'  \cr
#' }
#' 
#' @source Pearson, K. and Lee, A. and Bramley-Moore, L. (1899)
#' \dQuote{Mathematical Contributions to the Theory of Evolution. VI.
#' Genetic (Reproductive) Selection: Inheritance of Fertility in Man, and of Fecundity in Thoroughbred Racehorses.}
#' \emph{Philosophical Transactions of the Royal Society of London. Series A, Containing Papers of a Mathematical or Physical Character}, \url{http://www.jstor.org/stable/90782}.
#' 
#' @references Stigler, S. M. (2016) \emph{The Seven Pillars of Statistical Wisdom}, p. 142
"skulls"
