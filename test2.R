x <- c(12,12,11,11,9,11,14,11,12,12,11,10,11)
y <- c(16,15,14,13,15,12,14,15,15,14,14,15,14)

t.test(y, x, paired = TRUE, conf.level = 0.95, alternative = 'two.sided')
