#' Correlations of length and breadth of skulls by sex
#'
#' The data consist of the correlations between the length and
#' breadth of skulls in the Paris Catacombs gathered by
#' C. D. Fawcett, though neither a citation nor the raw data is provided in the article.
#' 
#' This is a dataset mentioned by Pearson as an example of the phenomena now known
#' as Simpson's Paradox and what he calls "spurrious correlation":
#' 
#' > We are thus forced to the conclusion that a mixture of heterogeneous groups,
#' > each of which exhibits in itself no organic correlation, will exhibit a greater or less
#' > amount of correlation. This correlation rnay properly be called spurious, yet as it
#' > is almost impossible to guarantee the absolute homogeneity of any community, our
#' > results for correlation are always liable to an error, the amount of which cannot be
#' > foretold. To those who persist in looking upon all correlation as cause and effect,
#' > the fact that correlation can be produced between two quite uncorrelated characters
#' > A and B by taking an artificial mixture of two closely allied races, must come rather
#' > as a shock.
#' 
#' The probable error of the correlation coefficient is
#' \deqn{PE = 0.6745 \left( \frac{1 - r^2}{\sqrt{n}} \right)}{PE = 0.6745 (1 - r^2 / sqrt(n))}.
#' 
#' 
#'
#' @format
#' A data frame with 4 columns and 3 rows:
#' \describe{
#'  \item{ \code{ sex }}{ \code{ character }. Either "male", "female", or "total" } \item{ \code{ n }}{ \code{ integer }. Number of observations } \item{ \code{ correlation }}{ \code{ numeric }. Pearson's correlation coefficient } \item{ \code{ probable_error }}{ \code{ numeric }. The probable error of the correlation coefficient, which is half the interquartile range. }
#' }
#' @format
#' A data frame with 4 columns and 3 rows:
#' \describe{
#'  \item{ \code{ sex }}{ \code{ character }. Either "male", "female", or "total" } \item{ \code{ n }}{ \code{ integer }. Number of observations } \item{ \code{ correlation }}{ \code{ numeric }. Pearson's correlation coefficient } \item{ \code{ probable_error }}{ \code{ numeric }. The probable error of the correlation coefficient, which is half the interquartile range. }
#' }
#' @format
#' A data frame with 4 columns and 3 rows:
#' \describe{
#'  \item{ \code{ sex }}{ \code{ character }. Either "male", "female", or "total" } \item{ \code{ n }}{ \code{ integer }. Number of observations } \item{ \code{ correlation }}{ \code{ numeric }. Pearson's correlation coefficient } \item{ \code{ probable_error }}{ \code{ numeric }. The probable error of the correlation coefficient, which is half the interquartile range. }
#' }
#' @format
#' A data frame with 4 columns and 3 rows:
#' \describe{
#'  \item{ \code{ sex }}{ \code{ character }. Either "male", "female", or "total" } \item{ \code{ n }}{ \code{ integer }. Number of observations } \item{ \code{ correlation }}{ \code{ numeric }. Pearson's correlation coefficient } \item{ \code{ probable_error }}{ \code{ numeric }. The probable error of the correlation coefficient, which is half the interquartile range. }
#' }
#' 
#' @references
#' \itemize{
#' \item{ Stigler, Stephen M. \emph{The Seven Pillars of Statistical Wisdom}, p. 142 }
#' 
#' }
#' 
#' @source
#' Pearson, Karl, Alice Lee, and Leslie Bramley-Moore. "Mathematical Contributions to the Theory of Evolution. VI. Genetic (Reproductive) Selection: Inheritance of Fertility in Man, and of Fecundity in Thoroughbred Racehorses." \emph{Philosophical Transactions of the Royal Society of London. Series A, Containing Papers of a Mathematical or Physical Character} (1899). \url{http://www.jstor.org/stable/90782}.

#' 
#' 
"skulls"