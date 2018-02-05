#' Naming convention of the normal distribution
#' 
#' Data from eighty textbooks, 1816 to 1976, on their eponymic practices regarding the normal distribution. Each text was coded as whether they called the normal distribution "Gaussian", "Laplacian", or did not use an eponym.
#' 
#' @format A data frame with 80 rows and 5 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{year} \tab \code{"integer"} \tab Year the text was published. \cr
#' \code{country} \tab \code{"character"} \tab Country in which the text was published. \cr
#' \code{gaussian} \tab \code{"logical"} \tab Did the text refer to the normal distribution as "Gaussian"?
#'  \cr
#' \code{laplace} \tab \code{"logical"} \tab Did the text refer to the normal distribution as "Laplace"?
#'  \cr
#' \code{noneponymic} \tab \code{"logical"} \tab Did the text not use an eponym when referring to the normal distribution?
#'  \cr
#' }
#' 
#' @source Stephen M. S. (1999) \emph{Statistics on the Table: The History of Statistical Concepts and Methods},
#' Table 14.1, "Data on Eighty book's eponymic practices", p. 287.
"eponymns"