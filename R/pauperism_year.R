#' Pauperism in England, 1871-1891 (Yearly Data)
#' 
#' Data on pauperism used in the 1899 article, \dQuote{An Investigation into the Causes of Changes in Pauperism in England},
#' by Udny Yule, which is the first use of multiple regression.
#' The data contains Yearly data on pauperism, the proportion of paupers provided for at home
#' vs. the work house, population, and population over 65 for the Poor Law Unions
#' of England for the years: 1871, 1881, and 1891.
#' 
#' See \code{\link{pauperism_plu}} for variables related to the Poor Law Unions.
#' 
#' @format A data frame with 1797 rows and 38 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{ID} \tab \code{"numeric"} \tab ID \cr
#' \code{year} \tab \code{"integer"} \tab Year \cr
#' \code{adultchabI} \tab \code{"numeric"} \tab Ratio of Adult to Child Able-Bodied In-Door Paupers \cr
#' \code{adultchabO} \tab \code{"numeric"} \tab Ratio of Adult to Child Able-Bodied Out-Door Paupers \cr
#' \code{adultchnotabI} \tab \code{"numeric"} \tab Ratio of Adult to Child Not Able-Bodied In-Door Paupers \cr
#' \code{adultchnotabO} \tab \code{"numeric"} \tab Ratio of Adult to Child Not Able-Bodied Out-Door Paupers \cr
#' \code{ChABI} \tab \code{"numeric"} \tab Child Able-Bodied In-Door Paupers \cr
#' \code{ChABO} \tab \code{"numeric"} \tab Child Able-Bodied Out-Door Paupers \cr
#' \code{ChNotABI} \tab \code{"numeric"} \tab Child Not Able-Bodied In-Door Paupers \cr
#' \code{ChNotABO} \tab \code{"numeric"} \tab Child Not Able-Bodied Out-Door Paupers \cr
#' \code{F65} \tab \code{"numeric"} \tab Females Aged 65+ in the Population \cr
#' \code{FABI} \tab \code{"numeric"} \tab Female Able-Bodied In-Door Paupers \cr
#' \code{FABO} \tab \code{"numeric"} \tab Female Able-Bodied Out-Door Paupers \cr
#' \code{FNotABI} \tab \code{"numeric"} \tab Female Not Able-Bodied In-Door Paupers \cr
#' \code{FNotABO} \tab \code{"numeric"} \tab Female Not Able-Bodied Out-Door Paupers \cr
#' \code{M65} \tab \code{"numeric"} \tab Males Aged 65+ in the Population \cr
#' \code{MABI} \tab \code{"numeric"} \tab Male Able-Bodied In-Door Paupers \cr
#' \code{MABO} \tab \code{"numeric"} \tab Male Able-Bodied Out-Door Paupers \cr
#' \code{mfabI} \tab \code{"numeric"} \tab Ratio of Male to Female Able-Bodied In-Door Paupers \cr
#' \code{mfabO} \tab \code{"numeric"} \tab Ratio of Male to Female Able-Bodied Out-Door Paupers \cr
#' \code{mfnotabI} \tab \code{"numeric"} \tab Ratio of Male to Female Not Able-Bodied In-Door Paupers \cr
#' \code{mfnotabO} \tab \code{"numeric"} \tab Ratio of Male to Female Not Able-Bodied Out-Door Paupers \cr
#' \code{MNotABI} \tab \code{"numeric"} \tab Male Not Able-Bodied In-Door Paupers \cr
#' \code{MNotABO} \tab \code{"numeric"} \tab Male Not Able-Bodied Out-Door Paupers \cr
#' \code{outratio} \tab \code{"numeric"} \tab Ratio of Out-Door Paupers to In-Door Paupers \cr
#' \code{outratiodiff} \tab \code{"numeric"} \tab Ratio of \code{outratio91} to \code{outratio81} \cr
#' \code{pauper} \tab \code{"numeric"} \tab Proportion of Paupers in the Population \cr
#' \code{pauper2} \tab \code{"numeric"} \tab Proportion of Paupers in the Population correcting for border changes.
#'  \cr
#' \code{paupratiodiff} \tab \code{"numeric"} \tab Ratio of Pauperism Proportion to previous decade \cr
#' \code{Popn} \tab \code{"numeric"} \tab Population (from Census Population Abstracts) \cr
#' \code{Popn2} \tab \code{"numeric"} \tab Population allowing for boundary changes. This is the population number used by Yule.
#'  \cr
#' \code{PopnF} \tab \code{"numeric"} \tab Female Population \cr
#' \code{PopnM} \tab \code{"numeric"} \tab Male Population \cr
#' \code{popratiodiff} \tab \code{"numeric"} \tab Ratio of Population to previous decade \cr
#' \code{PropF65} \tab \code{"numeric"} \tab Proportion of females aged 65+ in the female population \cr
#' \code{PropM65} \tab \code{"numeric"} \tab Proportion of males aged 65+ in the Male Population \cr
#' \code{Prop65} \tab \code{"numeric"} \tab Proportion of the population Aged 65+ \cr
#' \code{oldratiodiff} \tab \code{"numeric"} \tab Ratio of the proportion of Population Aged 65+ to the previous decade. \cr
#' }
"pauperism_year"
