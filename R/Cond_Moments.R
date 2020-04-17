#' @name
#' Cond_Moments
#'
#' @title
#' Conditional statistical moments
#'
#' @description
#' This function XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#'
#'
#'
#'
#' @param #ENTRY 1
#'
#'
#' @param #ENTRY 2  HASTA EL NUMERO DE ENTRADAS
#'
#'
#'
#' @return
#' QUÉ DEVUELVE?
#'
#' @export
#'
#' @author
#' Camila Garcia-Echeverri <cagarciae@unal.edu.co> \cr
#' Maria Cristina Areas-Bautista <mcarenasb@unal.edu.co> \cr

#'
#' Hydrodynamics of the natural media research group - HYDS
#' Universidad Nacional de Colombia - sede Bogota
#'
#' @examples
#'
#'
#'

Cond_Moments <- function(parameters_set, out_set , pp_names, steps = 10, t){ #pensar en t

  pp <- dim(parameters_set)[2]

  CM_count<-array(dim=c(steps,t,pp),dimnames = list(NULL,NULL,pp_names))
  CM_mean<-array(dim=c(steps,t,pp),dimnames = list(NULL,NULL,pp_names))
  CM_var<-array(dim=c(steps,t,pp),dimnames = list(NULL,NULL,pp_names))
  CM_skw<-array(dim=c(steps,t,pp),dimnames = list(NULL,NULL,pp_names))
  CM_kurt<-array(dim=c(steps,t,pp),dimnames = list(NULL,NULL,pp_names))


  div <- dim(parameters_set)[1]/steps
  sorted <- apply(parameters_set,2,sort)

  ranges_pp <- matrix(nrow=3*steps,ncol=pp)
  colnames(ranges_pp) <- pp_names

  # cond_pp <- matrix(nrow=steps,ncol=pp) revisar
  # colnames(cond_pp) <- pp_names

  for (s in 1:pp){
    x <- 0
    a <- 1
    for(i in 1:steps){
      x <- (3*i)
      ranges_pp[(x-2),s] <- min(sorted[a:(div*i),s])
      ranges_pp[(x-1),s] <- max(sorted[a:(div*i),s])
      ranges_pp[(x),s] <- ranges_pp[(x-1),s]-ranges_pp[(x-2),s]
      #cond_pp[i,s] <- ranges_pp[(x-1),s]-ranges_pp[(x-2),s] revisar

      a <- a+div
    }
  }

  ranges_pp<-as.data.frame(ranges_pp)
  #cond_pp<-as.data.frame(cond_pp) revisar

  #a <- cond_pp[1,]-cond_pp[2,]; aa <- cond_pp[(steps),]-cond_pp[(steps-1),] #revisar


  for(f in 1:t){

    #calculo de momentos para cada intervalo

    for (s in 1:pp){

      count__<-vector("numeric",0); mean__<-vector("numeric",0); var__<-vector("numeric",0);
      skw__<-vector("numeric",0); kurt__<-vector("numeric",0)

      for(i in 1:steps){

        a<-parameters_set[,s]

        count__[i]<-(sum(a>(ranges_pp[((3*i)-2),s])&a<=(ranges_pp[((3*i)-1),s])))/length(a)

        mean__[i]<-mean(out_set[a>(ranges_pp[((3*i)-2),s])&a<=(ranges_pp[((3*i)-1),s]),f], na.rm = T)

        var__[i]<-stats::var(out_set[a>(ranges_pp[((3*i)-2),s])&a<=(ranges_pp[((3*i)-1),s]),f])

        skw__[i]<-e1071::skewness(out_set[a>(ranges_pp[((3*i)-2),s])&a<=(ranges_pp[((3*i)-1),s]),f])

        kurt__[i]<-(e1071::kurtosis(out_set[a>(ranges_pp[((3*i)-2),s])&a<=(ranges_pp[((3*i)-1),s]),f]))+3

      }
      CM_count[,f,s]<-count__
      CM_mean[,f,s]<-mean__
      CM_var[,f,s]<-var__
      CM_skw[,f,s]<-skw__
      CM_kurt[,f,s]<-kurt__
    }
  }

  return(CM_count,CM_mean,CM_skw,CM_var,CM_kurt)
}
