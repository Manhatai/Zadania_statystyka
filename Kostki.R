rzut_kostkami <- function(liczba_rzutow, liczba_kostek, liczba_scian) {
  wyniki_rzutow <- matrix(sample(1:liczba_scian, liczba_rzutow * liczba_kostek, replace = TRUE), nrow = liczba_rzutow, byrow = TRUE)
  return(wyniki_rzutow)
}

szansa_na_liczbe_wielokostkowa <- function(liczba_do_wyrzucenia, wyniki_rzutow) {
  liczba_wystapien <- rowSums(wyniki_rzutow == liczba_do_wyrzucenia)
  szansa <- sum(liczba_wystapien >= 1) / nrow(wyniki_rzutow)
  return(szansa)
}

# Parametry kostek
liczba_kostek <- 1
liczba_scian_kostki <- 12
liczba_rzutow_kostki <- 10000

# Symulacja rzutu kostkami
wyniki_rzutow_kostki <- rzut_kostkami(liczba_rzutow_kostki, liczba_kostek, liczba_scian_kostki)

# Szansa na wyrzucenie liczby 5 przy rzucie trzema kostkami
liczba_do_wyrzucenia <- 5
szansa <- szansa_na_liczbe_wielokostkowa(liczba_do_wyrzucenia, wyniki_rzutow_kostki)

# Wyświetlenie wyników
cat("Szansa na wyrzucenie liczby", liczba_do_wyrzucenia, "przy rzucie" ,liczba_kostek, "kostkami to:", szansa, "\n")

