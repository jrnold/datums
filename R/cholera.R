#' John Snow's cholera data
#' 
#' Data on cholera deaths in 1849 and 1854 for sub-districts in London
#' and the companies supplying them water. This is the data used in the
#' difference-in-difference analysis, not the more famous map.
#' 
#' @format A data frame with 32 rows and 5 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{sub_district} \tab \code{"character"} \tab London sub-district \cr
#' \code{cholera_1849} \tab \code{"integer"} \tab Number of cholera deaths in 1849 \cr
#' \code{cholera_1854} \tab \code{"integer"} \tab Number of cholera deaths in 1854 \cr
#' \code{company} \tab \code{"character"} \tab Company that supplies water to that district \cr
#' \code{note} \tab \code{"character"} \tab Footnotes associated with rows. \cr
#' }
"cholera"
