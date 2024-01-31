library(BSDA)
set.seed(0)
# Sample data
sample_data <- c(rnorm(81,mean = 540, sd = 150))

# One-sample Z-test
z_test <- z.test(sample_data, mu = 600,sigma.x=150, conf.level = 0.95) # mu - wartość oczekiwana średniej populacji, sigma.x - przybliżone odchylenie standardowe

# Print the result
print(z_test)


# Two vectors of sample data
data1 <- c(27, 24, 18, 29, 30,27)
data2 <- c(23, 28, 20, 19, 35,23)

# Two-sample Z-test
z_test_result <- z.test(data1,data2,mu=26,sigma.x=10,sigma.y=15) # mu - wartość oczekiwana średniej populacji, sigma.x - przybliżone odchylenie standardowe dla zbioru 1, sigma.y - przybliżone odchylenie standardowe dla zbioru 2

# Print the result
print(z_test_result)
