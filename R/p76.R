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
bt.new
levels(bt.new)


#p137
bt.new[7] <- 'B'
bt.new
bt.new[8] <- 'C'
bt.new
as.integer(bt.new)


#p138
h.list <- c('balling', 'tennis', 'ski')
person <- list(name='Tom', age=25, student=T, hobby=h.list)
person[1]
person[[1]]
person$name


#p141
espresso <- c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
latte <- c(61, 70, 59, 71, 71, 92, 88)
cafe <- list(espresso = c(4, 5, 3, 6, 5, 4, 7),
             americano = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2.0, 2.5, 3.0),
             menu = c('espresso', 'americano', 'latte')
             )
cafe

cafe$menu <- factor(cafe$menu)
cafe$menu

sale.espresso <- cafe$price['espresso'] * cafe$espresso
sale.espresso <- cafe$price['americano'] * cafe$americano
sale.espresso <- cafe$price['latte'] * cafe$latte

sum(sale.day)
sale.mean <- mean(sale.day)
sale.mean
names(sale.day[sale.day >= sale.mean])


#p147
#Q1
리스트, 벡터, 팩터

#Q2
d

#Q3
4

#Q4
a <- 25:150
condi <- a < 100 & a %% 3 == 0
a[condi]

#Q5
a <- c('good', 'great', 'bad', 'okay', 'good', 'bad', 'good')
f <- factor(a)
levels(f)

#Q6
item <- c(76000, 52000, 36000)
names(item) <- c('shoes', 'pants', 'shirts')
discount <- c(0.05, 0.1, 0.05)
price <- item - item * discount
price
sum(price)

#Q7
smartphone <- list(model = "iphone_se",
                   capacity = c(64, 128, 256),
                   display = 'Retina',
                   color = c('black', 'red', 'white'))
smartphone$color

#Q8
weight <- c(56, 23, 89, 46, 76, 14, 97, 72, 68, 62, 35)
names(weight) <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k')
diff <- sum(weight) - 600
weight[weight==min(weight[weight > diff])]

#Q9
season <- c('여름', '봄', '여름', '겨울', '봄', '겨울', '여름', '여름', '봄', '가을')
favorite <- factor(season)
levels(favorite)

#Q10
vec <- c('호주', '독일', '영국', '일본', '미국', '중국', '호주', '영국', '중국', '일본', '터키', '미국', '중국', '중국', '호주',' 터키',' 독일',' 일본', '중국', '독일')
country <- factor(vec)
levels(country)
as.integer(country)

#Q11
post <- list(user_id = 'mr_steve',
             post_id = 'p11010',
             view = 37,
             image = FALSE,
             like = c('creeper', 'ales', 'skeleton', 'enderman'))
post

#Q12
account <- list(name = '하늘',
                number = 123-468-120566,
                balance = 4128750,
                history = c(-50000, +20000, -32500, -79000, +42000))
account
length(account$history[account$history < 0])
length(account$history[account$history > 0])


#Q1
point <- c(7, 7, 8, 8, 9, 10, 10, 10, 11, 20)
answer_sheet <- c(1, 3, 2, 2, 4, 1, 5, 2, 3, 1)
mark <- c(1, 3, 1, 2, 4, 2, 5, 2, 5, 1)
length(answer_sheet[answer_sheet==mark])
sum((answer_sheet==mark) * point)
point[9 <= point & point <= 11] <- 10
sum((answer_sheet==mark) * point)

#Q2
grade <- c(1, 2, 3, 3, 2, 6, 6, 6, 5, 5)
grade <- factor(grade)
levels(grade)
grade[6] <- 9
grade


#Q3
book <- list('제목' = '바람과 함께 나타나다',
             '저자' = '심훈',
             '가격' = 30000,
             '판매처' = c('한국문고', '가야서점', '길책방'))
book
book$저자
book$판매처[2]
