#' @name
#' SOBOL
#'
#' @title
#' SOBOL indices
#'
#' @description
#' This function calculates the SOBOL firts order and total indices
#'
#'
#' @param data_var a vector containig the variance of the model output for each
#' modelling time step
#'
#' @param CM_mean An array containfng the condicional mean of each parameter of
#' the model. This array has dimensions of steps x t x pp, where steps is the
#' number of divisions of the parametric range, t is the number of tempory steps
#' and pp the number of parameters of the model.
#'
#'
#' @param CM_var An array containfng the condicional variance of each parameter of
#' the model. This array has dimensions of steps x t x pp, where steps is the
#' number of divisions of the parametric range, t is the number of tempory steps
#' and pp the number of parameters of the model.
#'
#'
#' @param pp_names a strings vector with the names of the parameters of the model
#'
#'
#' @return
#' a list containing two matrices. The fisrt contains the first order sobol, the
#' second sobol_total
#'
#'
#' @export
#'
#'
#' @author
#' Camila Garcia-Echeverri <cagarciae@unal.edu.co> \cr
#' Maria Cristina Areas-Bautista <mcarenasb@unal.edu.co> \cr
#'
#'
#' Hydrodynamics of the natural media research group - HYDS
#' Universidad Nacional de Colombia - sede Bogota
#'
#' @examples
#' data("data_Bstat", "CM", "pp_names")
#' SOBOL_indices <- SOBOL(data_Bstat[,3], CM$CM_mean, CM$CM_var , pp_names)
#'

SOBOL <- function(data_var, CM_mean, CM_var, pp_names){

  t <- length(data_var)
  pp <- dim(CM_mean)[3]

  sobol <-  matrix(nrow = t, ncol=pp, dimnames = list(NULL,pp_names))
  colnames(sobol) <- pp_names

  sobol_total <- matrix(nrow = t, ncol=pp, dimnames = list(NULL,pp_names))
  colnames(sobol_total) <- pp_names


  for(f in 1:t){
    for (s in 1:pp){
      sobol[f,s] <- stats::var(CM_mean[,f,s],na.rm=TRUE)/data_var[f]
      sobol_total[f,s] <- mean(CM_var[,f,s],na.rm=TRUE)/data_var[f]
    }
  }

  SOBOL_indices <- list(sobol, sobol_total)
  return(SOBOL_indices)

}

