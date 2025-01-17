total <- 5050
tatal
print(total)
cat("합계 :", total)

5 > 3
TRUE + TRUE
a <- T
print(a)

1/0
sqrt(-5)

#p86(1번)
salt <- 50
water <- 100
result <- salt / (salt + water) * 100
cat("소금 =", salt, "물 =",  water, ": 농도 =", result, "%")


#p88
score <- c(68, 95, 83, 76, 90, 80, 85, 91, 82, 79)
mean(score)
seq(1, 101, 3)
rep(1, times = 5)
rep(1:5, times = 3)
rep(c('a', 'b', 'c'), each = 3)
rep(c('a', 'b', 'c'), times = 3)


#p92
absent <- c(8, 2, 0, 4, 1)
absent
names(absent)
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
absent
names(absent)


#p94
return <- c(4, 11, 5, 3, 2)
names(return)
names(return) <- c('shoes', 'shirt', 'pants', 'scarf', 'belt')
return
names(return)


#p96
d <- c(1, 3, 3, 7, 8)
d[c(1, 3, 5)]
d[1:3]
d[seq(1, 5, 2)]
d[-2]
d[-c(3:5)]

#p97
sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales[2]
sales['M2']
sales[4] <-  600
sales


#p101
customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <-  c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <-  customer
names(rate) <- customer
names(period) <- customer

customer
deposit
rate
period


#p104
d <- c(1, 7, 4, 2, 3)
sort(d, T)


#p107
x <- c(5, 2, 3, NA, 6, 9, 8, NA, 11, 7)
y1 <- sum(x)
y1
y2 <- sum(x, na.rm = T)
y2


#p108
a <- 1:12
b <- '월'
c <- paste(a, b, sep = '')
c


#p112 ~ p113
#Q1
a <- 7
b <- 9
c <- a * b
cat("c =", c)

#Q2
a <- 90
b <- 60
c <- 80
d <- 360 - (a + b+ c)
cat("d =", d)

#Q3
a <- 4
b <- 3
s <- a * b / 2
cat("s =", s)

#Q4
v1 <- 20
v2 <- 30
avg <- 60 / v1 + 60 / v2
cat("avg =", avg)

#Q5
sugar <- 25
water <- 125
percent <- sugar / (sugar + water) * 100
print(percent)

#Q6
v <- c(92, 43, 55, 28, 19)
v

#Q7
v1 <- c('cyan', 'magenta', 'yellow', 'black')
v1

v2 <- c(TRUE, FALSE, TRUE)
v2

v3 <- c(37.5, 8.2, 9.6, 11.8, 24.9)
v3

#Q8
v <- c(1, 2, 3, 4)
sum(v)

#Q9
v1 <- c('T', 'T', 'T', 'F', 'T', 'F', 'F', 'T', 'T', 'F')
v2 <- c(T, T, T, F, T, F, F, T, T, F)
sum(v1)
sum(v2)

#Q10
result <- sum(1:5000)
result

#Q11
even <- c(seq(2,100,2))
sum(even)

#Q12
d <- c(1:100)
d

odd <- d[seq(1,length(d),2)]
odd

odd[-c((length(odd)-10):length(odd))]

pick <- c(odd[3], odd[7], odd[32])
pick

names(pick) <- c('3rd', '7th', '32th')

pick[c('3rd', '32th')]

pick['3rd'] <- 3
pick


#p124
x <- c(1, 2, 3, 4)
y <- c(5, 6, 7, 8)
x+y
x*y


#p125
a <- c(2, 1, 5, 4, 7)


#p128
d <- c(1:10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = T)
median(d)
sum(d)/length(d)


#p133
espresso <- c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
latte <- c(61, 70, 59, 71, 71, 92, 88)

sale.espresso <- 2 * espresso
sale.americano <- 2.5 * americano
sale.latte <- 3.0 * latte

sale.day <- sale.espresso + sale.americano + sale.latte
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')

sum(sale.day)
sale.mean <- mean(sale.day)
sale.mean
names(sale.day[sale.day >= sale.mean])


#p135
bt <- c('A', 'B', 'B', 'O', 'AB', 'A')
bt.new <- factor(bt)
