szansa_na_reszki_pod_rzad <- function(liczba_reszek, liczba_prob, szansa_na_orla, szansa_na_reszke) {
  if (liczba_reszek <= 0 || liczba_prob <= 0) {
    stop("Liczba reszek i liczba prób muszą być większe od zera.")
  }
  reszki_pod_rzad <- 0
  for (i in 1:liczba_prob) {
    rzuty_moneta <- sample(c("Orzeł", "Reszka"), liczba_reszek, replace = TRUE, prob = c(szansa_na_orla, szansa_na_reszke))

    if (all(rzuty_moneta == "Reszka")) {
      reszki_pod_rzad <- reszki_pod_rzad + 1
    }
  }
  procent_szansy <- (reszki_pod_rzad / liczba_prob) * 100
  return(procent_szansy)
}

szansa_na_reszki_po_orlach <- function(liczba_orlow, liczba_reszek_po_orlach, liczba_prob, szansa_na_orla, szansa_na_reszke) {
  orly_pod_rzad <- 0
  reszki_po_orlach_pod_rzad <- 0

  for (i in 1:liczba_prob) {
    rzuty_moneta <- sample(c("Orzeł", "Reszka"), liczba_orlow + liczba_reszek_po_orlach, replace = TRUE, prob = c(szansa_na_orla, szansa_na_reszke))
    for (j in 1:(liczba_orlow + liczba_reszek_po_orlach)) {
      if (rzuty_moneta[j] == "Orzeł") {
        orly_pod_rzad <- orly_pod_rzad + 1
      } else {
        orly_pod_rzad <- 0
      }

      if (orly_pod_rzad == liczba_orlow && (j + liczba_reszek_po_orlach) <= length(rzuty_moneta)) {
        if (all(rzuty_moneta[(j + 1):(j + liczba_reszek_po_orlach)] == "Reszka")) {
          reszki_po_orlach_pod_rzad <- reszki_po_orlach_pod_rzad + 1
        }
        break
      }
    }
  }
  procent_szansy <- (reszki_po_orlach_pod_rzad / liczba_prob) * 100
  return(procent_szansy)
}


# Zmiana szansy na stronę monety
szansa_na_orla <- 0.3
szansa_na_reszke <- 0.7



# Szansa na wyrzucenie x reszek/orlow pod rzad
liczba_reszek_do_wyrzucenia <- 5 # Można to traktować jako reszki lub orły w zależności od polecenia i ustawienia szans na monety
liczba_prob_do_symulacji <- 100000
wynik_szansy <- szansa_na_reszki_pod_rzad(liczba_reszek_do_wyrzucenia, liczba_prob_do_symulacji, szansa_na_orla, szansa_na_reszke)
cat("Szansa na wyrzucenie", liczba_reszek_do_wyrzucenia, "reszek pod rzad wynosi:", wynik_szansy,"%\n")




# Szansa na wyrzucenie x liczby orlow/reszek po x liczbie orlow/reszek
liczba_orlow_do_wyrzucenia <- 6 # Można to traktować jako reszki lub orły w zależności od polecenia i ustawienia szans na monety
liczba_reszek_po_orlach_do_wyrzucenia <- 4 # Można to traktować jako reszki lub orły w zależności od polecenia i ustawienia szans na monety
liczba_prob_do_symulacji_po_orlach <- 100000
wynik_szansy_po_orlach <- szansa_na_reszki_po_orlach(liczba_orlow_do_wyrzucenia, liczba_reszek_po_orlach_do_wyrzucenia, liczba_prob_do_symulacji_po_orlach, szansa_na_orla, szansa_na_reszke)
cat("Szansa na wyrzucenie", liczba_reszek_po_orlach_do_wyrzucenia, "reszek pod rzad po wyrzuceniu", liczba_orlow_do_wyrzucenia, "orlow pod rzad wynosi:", wynik_szansy_po_orlach, "%\n")