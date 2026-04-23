#' Extrinsic incubation period
#'
#' @param temp `numeric` value of temperature for EIP to be calculated
#' @param temp_min  `numeric` minimum temperature for incubation
#'
#' @returns `numeric` calculation of EIP
#'
#' @details
#' Extrinsic Incubation Period function depending on T. Below T_min the parasite cannot complete sporogony; return `Inf` so downstream p^n collapses to 0 (VC -> 0) instead of going negative.
#'
#' @export
#'
#' @examples
#'
#' temps <- seq(0, 45, by = 1)
#'
#' extrinsic_incubation_period(temp = temps, temp_min = 14)
#'
extrinsic_incubation_period <- function(temp, temp_min = 16) {

  denom <- temp - temp_min

  eip <- ifelse(
    is.na(temp), NA,
    ifelse(denom <= 0, Inf, 111 / denom)
  )

  return(eip)
}
