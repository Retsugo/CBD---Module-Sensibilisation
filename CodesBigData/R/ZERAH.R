#' Computes the Empirical CDF from samples
#' @import stats
#' @param X Numeric vector whose elements are observations of a random variable
#' @return Function representing the empirical CDF, to be evaluated in various points
#' @examples
#' n<-100 # sample number
#' X<-rnorm(n) # n observation of a normal law
#' Y<-pCertificatBigData(X) # computing ECDF
#' Y(0.0) # evaluating the ECDF at 0.0
#'
#' @export
pCertificatBigData <- function(X){
  return(ecdf(X))
}
#' Computes the PDF from samples
#' @import stats
#' @param X Numeric vector whose elements are observations of a random variable
#' @return "density" class object
#' @examples
#' n<-100 # sample number
#' X<-rnorm(n) # n observation of a normal law
#' Y<-dCertificatBigData(X) # computing PDF
#'
#' @export
dCertificatBigData <- function(X){
  return(density(X))
}

#' Computes quantiles from samples
#' @import stats
#' @param X Numeric vector whose elements are observations of a random variable
#' @return Named numeric vector
#' @examples
#' n<-100 # sample number
#' X<-rnorm(n) # n observation of a normal law
#' Y<-qCertificatBigData(X) # computing quantiles
#'
#' @export
qCertificatBigData <- function(X){
  return(quantile(X))
}

#' Computes quantiles from samples
#' @import stats
#' @param n number of samples to return
#' @param var_mode "Y" to compute the sum of Random Variables, "21" for the product, "Z2" for the quotient
#' @param law "U" for uniform distribution between 0 and 1, "G" (or anything else) for standart normal ditribution
#' @return Numeric vector
#' @examples
#' n<-100 # sample number
#' Y<-rCertificatBigData(n,var_mode="Z1",law="G") # generating samples
#'
#' @export
rCertificatBigData <- function(n=1000,var_mode="Y",law="U"){
  if (var_mode=="Y"){
    if (law=="U"){
      X1 <- runif(n)
      X2 <- runif(n)
      Samples <- X1+X2}
      else{
        X1 <- rnorm(n)
        X2 <- rnorm(n)
        Samples <- X1+X2}
  }
  if (var_mode=="Z1"){
    if (law=="U"){
      X1 <- runif(n)
      X2 <- runif(n)
      Samples <- X1*X2}
    else{
      X1 <- rnorm(n)
      X2 <- rnorm(n)
      Samples <- X1*X2}
  }
  if (var_mode=="Z2"){
    if (law=="U"){
      X1 <- runif(n)
      X2 <- runif(n)
      Samples <- X1/X2}
    else{
      X1 <- rnorm(n)
      X2 <- rnorm(n)
      Samples <- X1/X2}
  }
  return(Samples)
}

#' Computes arithmetic mean from samples
#' @import stats
#' @param X Numeric vector whose elements are observations of a random variable
#' @return Numeric vector
#' @examples
#' n<-100 # sample
#' X<-rnorm(n) # n observation of a normal law
#' Y<-eCertificatBigData(X) # computing mean
#'
#' @export
eCertificatBigData <- function(X){
  return(mean(X))
}

#' Computes standart deviation from samples
#' @import stats
#' @param X Numeric vector whose elements are observations of a random variable
#' @return Numeric
#' @examples
#' n<-100 # sample number
#' X<-rnorm(n) # n observation of a normal law
#' Y<-eCertificatBigData(X) # computing sd
#'
#' @export
vCertificatBigData <- function(X){
  return(sd(X))
}
