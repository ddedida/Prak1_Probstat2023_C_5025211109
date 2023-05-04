# Nama   : Dewangga Dika Darmawan
# NRP    : 5025211109
# Kelas  : Probabilitas dan Statistika (C)

# Nomor 1
# Percobaan = 10
# Probabilias = 0.488

# Poin 1A
# Distribusi : Binomial
# Karena diketahui hanya akan ada 2 kemungkinan hasil, yaitu bayi lahir berjenis kelamin
# laki-laki atau tidak laki-laki. Selain itu, terdapat percobaan lebih dari satu kejadian
# Rumus : P(X=k) = (10Ck) 0.488^k (1-0.488)^(10-k)

# Poin 1B
b <- 3
ans <- dbinom(x=b, size=10, prob=0.488)
ans

# Poin 1C
c <- 2
ans <- pbinom(q=c, size=10, prob=0.488, lower.tail=TRUE)
ans

# Poin 1D
d <- 3
ans <- pbinom(q=d, size=10, prob=0.488, lower.tail=FALSE)
ans

# Poin 1E
size <- 10
prob <- 0.488
nilai_harapan <- size * prob
nilai_harapan
simp_baku <- sqrt(size * prob * (1 - prob))
simp_baku

# Poin 1F
f <- 0:10
plot(f, dbinom(x=f, size=10, prob=0.488),
     type='h',
     main='n histogram pendistribusian banyak bayi laki-laki',
     xlab='Banyak bayi laki-laki',
     ylab='Probabilitas'
)