#' @name
#' GSAtool
#'
#' @title
#' Global Sensibility Analisys tool
#'
#' @description
#' This function xxx
#'
#'
#' @param parameters_set matrix of dimensions n x pp, where n is the
#' number of runs and pp is the number of parameters.
#'
#' @param out_set matrix of dimensions n x t, where n is the number of
#' runs and t is the number of tempory steps.
#'
#' @param pp_names a strings vector with the names of the parameters of the model
#'
#' @param steps number of divisions of the parametric range
#'
#' @return
#' a list containing two matrices. The fisrt contains the first order sobol, the
#' second sobol_total
#'
#' @import stats e1071 utils
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
#' data("parameters_set", "out_set", "pp_names")
#' GSA_results <- GSAtool(parameters_set, out_set, pp_names, steps = 20)
#'

GSAtool <- function(parameters_set, out_set, pp_names, steps = 100){

  data_Bstat <- Bstat(out_set)

  CM <- Cond_Moments(parameters_set, out_set , pp_names, steps = steps)

  SOBOL_indices <- SOBOL(data_var = data_Bstat[,3], CM_mean = CM$CM_mean, CM_var = CM$CM_var, pp_names = pp_names)

  AMA_indices <- AMA(data_Bstat , CM, pp_names, steps = steps)

  save_results(SOBOL = SOBOL_indices[[1]], SOBOL_total = SOBOL_indices[[2]], amae = AMA_indices$AMAE, amav = AMA_indices$AMAV, amar = AMA_indices$AMAR, amak = AMA_indices$AMAK)

}
