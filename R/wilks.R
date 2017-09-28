#' Calculate wilks points
#'
#' @param body_weight Weight of the lifter
#' @param weight_lifted Total weight lifted
#' @param gender Either 'male' or 'female'
#' @param unit Either 'kg' or 'lbs'
#'
#' @return Wilks points
#' @export
#'
#' @examples
#' wilks(83, 450, 'male')
wilks <- function(body_weight, weight_lifted, gender, unit = 'kg') {
  if (unit == 'lbs') {
    body_weight <- body_weight / 2.2046226218488
    weight_lifted <- weight_lifted / 2.2046226218488
  }
  stopifnot(unit == 'lbs' | unit == 'kg')
  x <- body_weight
  if (gender == 'male') {
    a <- -216.0475144
    b <- 16.2606339
    c <- -0.002388645
    d <- -0.00113732
    e <- 7.01863E-06
    f <- -1.291E-08
  } else if (gender == 'female') {
    a <- 594.31747775582
    b <- -27.23842536447
    c <- 0.82112226871
    d <- -0.00930733913
    e <- 4.731582E-05
    f <- -9.054E-08
  } else {
    stop("Gender must either be male or female")
  }
  coeff <- 500 / (a + b * x + c * x ^ 2 + d * x ^ 3 + e * x ^ 4 + f * x ^ 5)
  weight_lifted * coeff
}
