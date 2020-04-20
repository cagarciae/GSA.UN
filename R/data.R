#'  @title  Example - parameters names
#'
#'  @description Parameters names
#'
#'
#'@format A \code{value}
#' \describe{
#'    \item{pp_names}{a vector of characters}
#' }
#'
#' @source Maria Crstina thesis XXX
#'
#' @author CGE
#'
"pp_names"

#'  @title  Results of a sample model
#'
#'  @description Output generated with an example funtion
#'
#'
#'@format A \code{matrix}
#' \describe{
#'    \item{out_set}{a matrix of dimensions n x t, runs of the model x
#'    temporary steps}
#' }
#'
#' @source Maria Crstina thesis XXX
#'
"out_set"

#'  @title  Set of parameters randomly generated
#'
#'  @description  It contains the parameters a,b,c.
#'
#'@format A \code{matrix}
#' \describe{
#'    \item{parameters_set}{a matrix of dimensions n x 3, runs of the model x
#'    number of parameters}
#' }
#'
#' @source Maria Crstina thesis XXX
#'
"parameters_set"

#'  @title  First four conditional moments of example data
#'
#'  @description Data generated with the example of the function Cond_Moments
#'
#'
#'@format A \code{list}
#' \describe{
#'    \item{CM}{A list of arrays, each array has dimensions of steps, t, p}
#' }
#'
#' @source Function Conditional_Moments
#'
#' @author CGE
#'
"CM"

#'  @title  First four conditional moments of example data
#'
#'  @description Data generated with the example of the function Cond_Moments
#'
#'
#'@format A \code{data.frame}
#' \describe{
#'    \item{data_Bstat}{a data frame of dimensions t x 6}
#' }
#'
#' @source Function Bstat
#'
#' @author CGE
#'
"data_Bstat"
