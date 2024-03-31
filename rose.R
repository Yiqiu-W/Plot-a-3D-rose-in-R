library(plot3D)
x <- seq(0, 24) / 24
t <- seq(0, 575, by = 0.5) / 575 * 20 * pi + 4 * pi
grid <- expand.grid(x = x, t = t)
x <- matrix(grid$x, ncol = 25, byrow = TRUE)
t <- matrix(grid$t, ncol = 25, byrow = TRUE)
p <- (pi / 2) * exp(-t / (8 * pi))
change <- sin(15 * t) / 150
u <- 1 - (1 - (3.6 * t) %% (2 * pi) / pi)^4 / 2 + change
y <- 2 * (x^2 - x)^2 * sin(p)
r <- u * (x * sin(p) + y * cos(p))
persp3D(
  x = r * cos(t),
  y = r * sin(t),
  z = u * (x * cos(p) - y * sin(p)),
  main = "To XX",
  xlab = "You",
  ylab = "Love",
  zlab = "I",
  col = colorRampPalette(c("lightpink","darkred"))(100),
  # border = "grey85",
  lwd = 0.1,
  colkey = FALSE,
  #ticktype = "detailed",
  bty = "b2",
  theta = -60,
  phi = 45
)
