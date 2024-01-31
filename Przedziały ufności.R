# Sample data
data <- c(23, 28, 32, 27, 25, 30, 31, 29, 26, 24)

# Calculate the confidence interval
result <- t.test(data)

# Extract the confidence interval
confidence_interval <- result$conf.int

# Print the confidence interval
confidence_interval


# Jak interpretować wynik?
# 25.33415 29.66585 - przedział ufności dla danych
# 0.95 - % danych dla przedzialu ufnosci