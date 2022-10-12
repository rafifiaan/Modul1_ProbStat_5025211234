#1 Point A
p = 0.20
x = 3
P <- dgeom(x,p)
P

#1 Point B
mean(rgeom(n = 10000, prob = p) == 3)

#1 Point C
#Penjelasan terdapat pada dokumentasi readme.md

#1 Point D
n = 10000
hist(rgeom(n, prob = p ), main = 'Histogram Distribusi Geometrik')

#1 Point E
mean = 1 / p
variance = (1 - p) / (p ^ 2)
mean
variance

# NOMOR 2 #

n = 20
p = 0.2

#2 Point A
x = 4
probability = dbinom(x, n, prob = p, log = FALSE)
probability

#2 Point B
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram Binomial")

#2 Point C
mean = n * (prob = p)
variance = n * (prob = p) * (1 - (prob = p))
mean
variance



# NOMOR 3 #

lambda = 4.5

#3 Point A
x = 6
probability = dpois(x, lambda)
probability

#3 Point B
x = 6
n = 365
hist(rpois(n, lambda), main = "Histogram Poisson")

#3 Point C
#Penjelasan terdapat pada dokumentasi readme.md

#3 Point D
mean = variance = lambda
mean 
variance



# NOMOR 4 #

x = 2
v = 10

#4 Point A
probability = dchisq(x, 10)
probability

#4 Point B
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Chi-Square")

#4 Point C
mean = v
variance = 2 * v
mean
variance



# NOMOR 5 #

lambda = 3

#5 Point A
set.seed(1)
rnorm(1)
probability = dexp(1, rate = lambda)
probability

#5 Point B
set.seed(1)
hist(rexp(10, rate = lambda), main = "Exp 10 Random Variable")
hist(rexp(100, rate = lambda), main = "Exp 100 Random Variable")
hist(rexp(1000, rate = lambda), main = "Exp 1000 Random Variable")
hist(rexp(10000, rate = lambda), main = "Exp 10000 Random Variable")

#5 Point C
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
variance = (sd(rexp(n, rate = lambda))) ^ 2
mean
variance



# NOMOR 6 #

n = 100
mean = 50
sd = 8

#6 Point A
set.seed(1)
data <- rnorm(n, mean, sd)
data
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))
x1
x2

probability1 <- pnorm(x1, mean, sd)
probability2 <- pnorm(x2, mean, sd)
probability1
probability2

probability <- probability2 - probability1
plot(data)

#6 Point B
breaks = 50
hist(data, breaks, main = "5025211234_Rafi Aliefian Putra Ramadhani_Probstat_A_DNhistogram")

#6 Point C
variance = (sd(data)) ^ 2
variance