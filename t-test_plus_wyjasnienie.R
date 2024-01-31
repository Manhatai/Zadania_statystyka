# zad.6
sweetSold <- c(9.0, 11.6, 6.0, 10.0, 9.8, 14.0, 8.1, 8.6, 10.5, 6.6, 9.9, 10.6) # 50 losowych obserwacji z rozkładu normalnego o średniej (mean) równa 140 i odchyleniu standardowym (sd) równym 5.
t.test(sweetSold, mu = 9.558333, conf.level = 0.95, alternative = 'two.sided')
