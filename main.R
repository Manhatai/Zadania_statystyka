#Prawdopodobienstwo
pnorm(1) - pnorm(-1)                    #1
pnorm(-0.5 , 1 , 1) - pnorm(-1, 1 ,1)   #2
1 - pnorm(-2, 2, 3)                     #3
pnorm(-1,-1,2) - pnorm(-2, -1, 2)       #4


#Kwantyle
qnorm(0.95, 100, 15)    #1
qnorm(0.90, 2, 3)       #2
qnorm(0,01, 0, 1)       #3
qnorm(0,04, 3, 4)       #4

#Tablice prawdopodobienstwa
dane <- rnorm(100, 200, 300)
summary(dane)
hist(dane)



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


plot(trk(1))




