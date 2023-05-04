# Nama   : Dewangga Dika Darmawan
# NRP    : 5025211109
# Kelas  : Probabilitas dan Statistika (C)

# Nomor 2
# λ (Kejadian dalam interval waktu tertentu) = 1.8

# Poin 2A
# Distribusi : Poisson
# Karena diketahui kemungkinan terjadinya suatu peristiwa dalam suatu
# interval waktu tertentu, , di mana peristiwa tersebut jarang terjadi
# tetapi dapat terjadi dalam berbagai banyak kejadian
# Rumus : P(X=k) = e^(-1.8) (1.8^k / k!) ; e = bilangan natural

# Poin 2B
b <- 4
ans <- dpois(x=b, lambda=1.8)
ans

# Poin 2C
c <- 4
ans <- ppois(q=c, lambda=1.8, lower.tail=TRUE)
ans

# Poin 2D
d <- 5
ans <- ppois(q=d, lambda=1.8, lower.tail=FALSE)
ans

# Poin 2E
nilai_harapan <- 1.8
nilai_harapan
standar_deviasi <- sqrt(nilai_harapan)
standar_deviasi

# Poin 2F
f <- 0:10
plot(f, dpois(f, lambda=1.8),
     type='h',
     main='Histogram Pendistribusian Banyak Kematian',
     ylab='Probabilitas',
     xlab ='Banyak Kematian'
)

# Poin 2G
set.seed(123456789)
ans = rpois(n=10, lambda=1.8)
ans

# Poin 2H
# Dilihat dari poin 2G, hasil simulasi tidak jauh dari lambda yang ada atau
# berada dalam range 0-4. Sehingga, apabila dibandingkan dengan hasil poin 2D,
# menunjukkan bahwa probabilitas kematian diatas 4 memiliki nilai yang lebih kecil