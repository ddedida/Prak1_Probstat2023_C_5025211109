# Nama   : Dewangga Dika Darmawan
# NRP    : 5025211109
# Kelas  : Probabilitas dan Statistika (C)

# Nomor 4
n <- 100
mean <- 45
sd <- 5

# Poin 4A
data <- rnorm(n=n, mean=45, sd=sd)
data

z <- (data-mean(data)) / sd(data)
z

min <- runif(1, min = min(data), max = mean)
max <- runif(1, min = mean, max = max(data))
prob_min <- pnorm(min, mean, sd)
prob_max <- pnorm(max, mean, sd)
prob <- prob_max - prob_min
prob

plot(data)

# Poin 4B
breaks <- 50
hist(data, breaks, main = "Histogram Distribusi Normal")

# Poin 4C
varian <- sd(data)^2
varian