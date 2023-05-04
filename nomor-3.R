# Nama   : Dewangga Dika Darmawan
# NRP    : 5025211109
# Kelas  : Probabilitas dan Statistika (C)

# Nomor 3
# x = 3
# v = 10

# Poin 3A
ans <- dchisq(x=3, df=10)
ans

# Poin 3B
n <- 500
v <- 10
hist(rchisq(n, v), main='Histogram Distribusi Chi-Square', ylab='V', xlab ='X')

# Poin 3C
rataan <- v <- 10
rataan
varian <- 2 * v
varian