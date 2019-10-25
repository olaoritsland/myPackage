#' Cap
#'
#' Denne funksjonen tar inn en vektor, et tak (maksverdi), et gulv (minverdi) og returnerer vektoren med maksverdi lik takverdi
#' og gulv lik minimumsverdi.
#'
#' @param x
#' Numerisk vektor
#' @param cap
#' Maksverdi
#' @param floor
#' Minverdi
#' @return Returnerer en cappet versjon av x.
#' @export
#'
#' @examples
#'
#' data <- c(1:10)
#' cap_var(data, cap = 8, floor = 2)
#'
cap_var <- function(x, cap, floor) {

  if(any(!is.numeric)) {
    stop("x has to be numeric")
  }

  pmax(pmin(x, cap), floor)

}
