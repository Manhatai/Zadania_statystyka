#Zadanko, zrobic kwadrat
trk <- function(liczba_los){
 A <- c(-3,0)
 B <- c(3,0)
 C <- c(0,5)

  start <- c(1,1)
  wyniki <- matrix(0, nrow=liczba_los, ncol = 2)
  licznik <- 1

  while(licznik <=liczba_los){
    wsp <- sample(0:2, 1)
    if(wsp==0){
      start <- (start+A)/2
    }
    if(wsp==1){
      start <- (start+B)/2
    }
    if(wsp==2){
      start <- (start+C)/2
    }
    wyniki[licznik,] <- start
    licznik <- licznik+1
  }
wyniki
}


plot(trk(10000))
