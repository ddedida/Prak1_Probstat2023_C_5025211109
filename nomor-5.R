# Nama   : Dewangga Dika Darmawan
# NRP    : 5025211109
# Kelas  : Probabilitas dan Statistika (C)

# Nomor 5

# Poin 5A
a <- -2.34
df_a <- 6
ans <- pt(q=a, df=df_a, lower.tail=TRUE)
ans

# Poin 5B
b <- 1.34
df_b <- 6
ans <- pt(q=b, df=df_b, lower.tail=FALSE)
ans

# Poin 5C
c <- -1.23
df_c <- 3
ans <- (pt(q=c, df=df_c)) * 2
ans

# Poin 5D
d <- -0.94
df_d <- 14
ans <- 1 - ((pt(q=d, df=df_d)) * 2)
ans

# Poin 5E
e <- 0.0333
df_e <- 5
ans <- qt(p=e, df=df_e)
ans

# Poin 5F
f <- 1 - 0.125
df_f <- 25
ans <- qt(p=f, df=df_f)
ans

# Poin 5G
g <- 0.75 + ((1 - 0.75) / 2)
df_g <- 11
ans <- qt(p=g, df=df_g)
ans

# Poin 5H
h <- 1 - (0.0333 / 2)
df_h <- 23
ans <- qt(p=h, df=df_h)
ans