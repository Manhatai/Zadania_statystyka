orzel <- 1
reszka <- 0
licznik <- 1
wyniki <- c()

while(licznik < 1001){
  losowa_liczba <- sample(c(orzel, reszka, reszka), 1)
  wyniki <- c(wyniki, losowa_liczba)
  licznik <- licznik + 1
}


print(mean(wyniki))

