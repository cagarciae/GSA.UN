#' @name
#' save_results
#'
#' @title
#' Save GSA results
#'
#' @description
#' This function helps to save the results in .csv format
#'
#' @param SOBOL SOBOL index
#'
#' @param SOBOL_total SOBOL_total
#'
#' @param amae AMAE index
#'
#' @param amav AMAV index
#'
#' @param amar AMAR index
#'
#' @param amak AMAK index
#'
#' @author
#' Camila Garcia-Echeverri <cagarciae@unal.edu.co> \cr

#'
#' Hydrodynamics of the natural media research group - HYDS
#' Universidad Nacional de Colombia - sede Bogota
#'

save_results <- function(SOBOL, SOBOL_total, amae, amav, amar, amak){

  a <- 'SOBOL.csv'
  utils::write.csv(SOBOL, file=a)

  a <- 'SOBOL_total.csv'
  utils::write.csv(SOBOL_total, file=a)

  a <- 'AMAE.csv'
  utils::write.csv(amae, file=a)

  a <- 'AMAV.csv'
  utils::write.csv(amav, file=a)

  a <- 'AMAR.csv'
  utils::write.csv(amar, file=a)

  a <- 'AMAK.csv'
  utils::write.csv(amak, file=a)


  # all_indices=c("SOBOL","AMAE","AMAV", "AMAR",
  #     "AMAK","Mean","Variance","Skewness","Kurtosis")
  # merge_index<-matrix(nrow = pp, ncol=9, dimnames=list(pp_names,all_indices))

}
