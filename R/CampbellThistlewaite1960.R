#' Thistlewaite and Campbell (1960) Regression Discontinuity Data
#' 
#' This contains the data used in Thistlewaite and Campbell (1960), the first regression-discontinuity design paper.
#' It studied the effect of merit awards on future academic outcomes: career aspirations, enrollment in
#' Ph.D. or M.D. programs, and intellectualism.
#' 
#' Their sample consists near winners in the 1957 Merit program.
#' It consists of 5,126 students who received the Certificates of Merit (C of M)
#' and 2,848 students who received a letter of commendation.
#' Students received the Certificate of Merit primarily based on the basis of the CEEB
#' Scholarship Qualifying Test (SQT). The sample only includes those within 10 points
#' of the cut-off point for their state.  These students were sent a questionnaire
#' which provides the response variables for this analysis.
#' 
#' The values of \code{scholarship}, \code{scholarship_150}, \code{number_respondents},
#' \code{teacher_researcher}, and \code{intellectualism} come from extracting data from
#' the figures in the paper.
#' 
#' @format A data frame with 22 rows and 10 columns.
#' 
#' \tabular{lll}{
#' name \tab type \tab description \cr
#' \code{certificate_of_merit} \tab \code{"integer"} \tab Received a certificate of merit. From Table 1. \cr
#' \code{test_score} \tab \code{"character"} \tab Aptitude score interval, relative to the cutoff score of the student's state. From Table 1. \cr
#' \code{merit_scholars} \tab \code{"integer"} \tab Number of merit scholars in the interval. \cr
#' \code{number_in_sample} \tab \code{"integer"} \tab The number of students in the sample. From Table 1. \cr
#' \code{number_respondents} \tab \code{"integer"} \tab The number of students responding to the survey. From Table 1. \cr
#' \code{scholarship} \tab \code{"numeric"} \tab Percent of individuals winning any scholarship. From Fig 2. \cr
#' \code{scholarship_150} \tab \code{"numeric"} \tab Percent of individuals receiving a scholarship of \\$150 or greater. From Fig. 2. \cr
#' \code{graduate_study} \tab \code{"numeric"} \tab Percent of individuals reporting that they were planning to do three or more years of graduate study (PhD or M.D.). From Fig 3. \cr
#' \code{teacher_researcher} \tab \code{"numeric"} \tab Percent of individuals reporting that they were planning to be a college teacher or scientific researcher. From Fig 3. \cr
#' \code{intellectualism} \tab \code{"numeric"} \tab Mean score on an attitude towards intellectualism scale. \cr
#' }
#' 
#' @source Thistlewaite, Donald L. and Donald T. Campbell. (1960)
#' "Regression-Discontinuity Analysis: An Alternative to the Ex Post Facto Experiment."
#' \emph{Journal of Educational Psychology}. 51(6), December 1960. pp. 309-317.
"CampbellThistlewaite1960"