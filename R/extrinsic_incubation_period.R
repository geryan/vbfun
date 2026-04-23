extrinsic_incubation_period <- function(T, T_min = 16) {
  denom <- T - T_min

  eip <- ifelse(
    is.na(T), NA,
    ifelse(denom <= 0, Inf, 111 / denom)
  )

  return(eip)
}
