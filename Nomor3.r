#3a
H0 = 9.50
H1 = 10.98

#3b
tsum.test(
  mean.x=3.64,
  s.x = 1.67,
  n.x = 19, 
  mean.y =2.79,
  s.y = 1.32,
  n.y = 27, 
  alternative = "greater",
  var.equal = TRUE
)

#3c 
library(mosaic)
plotDist(dist = 't', df = 2, col = "yellow")

#3d 
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
