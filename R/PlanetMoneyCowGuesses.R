#' Planet Money Cow Weight Guesses
#' 
#' Data collected by the NPR podcast \emph{Planet Money} to the question, "How much does this cow weigh?". This is a replication of the Galton paper "Vox Populi" which cites guesses of cow's weight from a county fair to illustrate the "wisdom of crowds".
#' 
#' @format A data frame with 17184 rows and 2 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{guess} \tab \code{"numeric"} \tab Response to the question, "How much does this cow weigh?". The weights are in pounds. \cr
#' \code{error} \tab \code{"numeric"} \tab Difference (in pounds) between the guess and the weight of 1,355 pounds. \cr
#' }
#' 
#' @source \href{https://docs.google.com/spreadsheets/d/1tLZpxu0FzX5v6Dq1BYM4RWgdFygit4En6L8sldMz68Q/edit?usp=sharing}{Planet Money Cow Data}
#' 
#' @references Quoctrung Bui, "17,205 People Guessed The Weight Of A Cow. Here's How They Did.", \emph{Planet Money}, August 7, 2015. \url{http://www.npr.org/sections/money/2015/08/07/429720443/17-205-people-guessed-the-weight-of-a-cow-heres-how-they-did}.
#' 
#' @references Jacob Goldstein, "How Much Does This Cow Weigh?," \emph{Planet Money}, July 17, 2015.
#' 
#' @seealso \code{\link{VoxPopuli}} for the data from original Galton paper which inspired
#' this data collection.
"PlanetMoneyCowGuesses"
