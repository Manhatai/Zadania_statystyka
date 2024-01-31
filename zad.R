proba <- c(100,200,300,400)
srednia <- rep(0,4)
sigma <- rep(0,4)
licznik <- 1

for (i in proba){
  temp <- mean(rnorm(i,2,3))
  srednia[licznik] <- mean(temp)
  sigma[licznik] <- sd(temp)
  licznik <- licznik+1
}

dane <- data.frame(proba,srednia,sigma)

dane