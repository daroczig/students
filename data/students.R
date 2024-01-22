set.seed(42)
students <- data.frame(
    math = NA_real_,
    shoe = NA_real_,
    x = round(stats::runif(42, min = 7, max = 14))
)
students$math <- stats::rpois(nrow(students), students$x / 14 * 80)
students$shoe <- stats::rpois(nrow(students), students$x / 14 * 34)
students$y <- cut(students$x, c(0, 10, Inf))
students$z <- sample(c('F', 'M'), nrow(students), replace = TRUE)
