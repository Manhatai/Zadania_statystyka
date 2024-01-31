dane <- rnorm(100, 0, 1) # Generuje 100 losowych wartości z rozkładu normalnego, gdzie średnia wynosi 200, a odchylenie standardowe wynosi 300.
summary(dane) # Wyświetla podsumowanie statystyk dla wygenerowanych danych.
hist(dane) # Tworzy histogram dla danych


# Co oznacza wynik?

# Min. - Minimalna wartość rozkładu normalnego.
# 1st Qu. - Pierwszy kwartyl (25 percentyl); Wartość, poniżej której znajduje się 25% danych.
# Median - Mediana - Środkowa wartość w zestawie danych, oddzielająca 50% danych od najwyższych 50%.
# Mean - Średnia - Średnia arytmetyczna wszystkich danych w rozkładnie.
# 3rd Qu. - Trzeci kwartyl (75 percentyl); Wartość, poniżej której znajduje się 75% danych.
# Max. - Maksymalna wartość rozkładu normalnego


# Co to reguła trzech sigm?

# Oznacza ona że ponad 99% wartości znajdu się między trzema odchyleniami standardowymi. 68.2%, 95.4%, 99.7%