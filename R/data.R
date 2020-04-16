#'  @title  Results of a sample model
#'
#'  @description Output generated with an example funtion
#'  x <- z*exp(a)+b*log(c)
#'
#'
#'@format A \code{matrix}
#' \describe{
#'    \item{out_set}{a matrix of dimensions n x t, runs of the model x
#'    temporary steps}
#' }
#'
#' @source Random generation
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
#' @source Random generation
#'
"parameters_set"

#'  @title  Example input z
#'
#'  @description Data generated randomly
#'
#'
#'@format A \code{vector}
#' \describe{
#'    \item{z}{a vector with values for z, generated randomly}
#' }
#'
#' @source Random generation
#'
"z"

#'  @title  Example parameter a
#'
#'  @description Data generated randomly
#'
#'
#'@format A \code{vector}
#' \describe{
#'    \item{a}{a vector with values for a, generated randomly,
#'    range from 1 to 10}
#' }
#'
#' @source Random generation
#'
#' @author CGE
#'
"a"

#'  @title  Example parameter b
#'
#'  @description Data generated randomly
#'
#'
#'@format A \code{vector}
#' \describe{
#'    \item{b}{a vector with values for b, generated randomly,
#'    range from 200 to 300}
#' }
#'
#' @source Random generation
#'
#' @author CGE
"b"

#'  @title  Example parameter c
#'
#'  @description Data generated randomly
#'
#'
#'@format A \code{vector}
#' \describe{
#'    \item{c}{a vector with values for c, generated randomly,
#'    range from 0.1 to 0.2}
#' }
#'
#' @source Random generation
#'
#' @author CGE
#'
"c"

#'  @title  Example - parameters names
#'
#'  @description Parameters names
#'
#'
#'@format A \code{vector}
#' \describe{
#'    \item{pp_names}{a vector of characters c("a","b","c")}
#' }
#'
#' @source Random generation
#'
#' @author CGE
#'
"pp_names"
