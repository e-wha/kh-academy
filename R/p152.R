x <- 1:4
t <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)

m1 <- cbind(x, y)
m1
m2 <- rbind(x, y)
m2
m3 <- rbind(m2, x)
m3
m4-cbind(z, x)
m4


#p156
score <- matrix(c(100, 78, 80, 80, 50, 65), nrow = 2, ncol = 3, byrow = T)
score

z <- matrix(1:20, nrow = 4, ncol = 5)
z
z[2, 3]
z[2, ]
z[,3]


#p160
m <- matrix(seq(1, 23, 2), nrow = 3)
m
m[1, 2]
m[2, ]
m[,4]
m[c(1,3),3:4]


#p161
score <- matrix(c(90, 85, 69, 78, 85, 96, 49, 95, 90, 80, 70, 60), nrow = 4)
score
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English', 'Math', 'Science')
score

score['John',]
score[]


#LAB
hamburger <- matrix(c(514, 533, 566, 917, 853, 888, 11, 13, 10), nrow = 3)
hamburger
rownames(hamburger) <- c('M', 'L', 'B')
colnames(hamburger) <- c('열량(kcal)', '나트륨(na)', '포화지방(fat)')
hamburger


iris
str(iris)
levels(iris$Species)

head(iris)
tail(iris)
colnames(iris)
dim(iris)
nrow(iris)
table(iris[, "Species"])

str(iris)
levels(iris[5])


class(iris)



class(iris)
is.matrix(iris)
is.data.framie(iris)
iris
str(state.x77)


#p186
str(mtcars)
colSums(mtcars[,1:11])
colSums(mtcars)
colMeans(mtcars)
subset(mtcars, hp >= 100 & hp < 200)
mtcars$hp
mtcars[, 4]


#p187
str(trees)
girth.mean <- mean(trees$Girth)
girth.mean
candidate <- subset(trees, Girth >= girth.mean & Height > 80 & Volume > 50)
candidate


#p189
install.packages('reshape2')
library(reshape2)

str(tips)


levels(tips$day)
dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')
table(dinner$day)
table(lunch$day)

colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])


tip.rate <- tips$tip/tips$total_bill
mean(tip.rate)


idx <- subset(tips, tips$sex == 'Female')
avg.female <- mean(idx$tip)
avg.female
idx <- subset(tips, tips$sex == 'Male')
idx
avg.male <- mean(idx$tip)
avg.male


#p194~197
#Q01
데이터 프레임

#Q02
관측값, 변수

#Q03
x <- c(seq(2, 8, 2))
y <- c(seq(10, 16, 2))
z <- c(seq(18, 24, 2))
m <- cbind(x, y, z)
m

m <- matrix(c(seq(2, 24, 2)), nrow = 4, ncol = 3)
m

m <- matrix(c(seq(2, 24, 2)), ncol = 3, byrow = 3)
m

#Q04
x <- c(seq(9, 3, -2))
y <- c(8, 11, 2, 9)
m <- rbind(x, y)
m

colnames(m) <- c('a', 'b', 'c', 'd')
rownames(m) <- c('x', 'y')
m

#Q05
#1
t(m)
#2
df <- data.frame(m)
class(df)
#3
info <- c(1, 2, 3, 4)
t(info)
df.new <- data.frame(df, info)
df.new
#4
class(df.new)
str(df.new)

#Q06
blood <- c('A', 'B', 'AB', 'B', 'B')
rh <- c('+', '+', '-', '+', '+')
age <- c(21, 30, 43, 17, 26)
#1
df <- data.frame(cbind(blood, rh, age))
df
#2
colnames(df)
#3
df.nb <- subset(df, blood != 'B')
df.nb

#Q07
str(cars)
dim(cars)
#speed : 숫자형, dist : 숫자형

#Q08
#1 T
#2 T
#3 F
#4 T
#5 F

#Q09
#1
number <- 1:7
title <- c('그대랑', '다툼', '빨래', '두통', '보조개', '매듭', '이상해')
like <- c(16075, 8218, 12119, 738, 3200, 16144, 5110)
love <- data.frame(number, title, like)
love
#2
best <- subset(love, like == max(like))
best

#Q10
steve <- c(97, 100, 83, 95, 92)
enderman <- c(88, 82, 90, 91, 87)
creeper <- c(100, 96, 76, 89, 95)
mid <- data.frame(rbind(steve, enderman, creeper))
colnames(mid) <- c('Korea', 'History', 'Math', 'Science', 'English')
mid

steve <- c(94, 95, 90, 92, 89)
enderman <- c(92, 95, 87, 95, 94)
creeper <- c(100, 100, 85, 84, 96)
final <- data.frame(rbind(steve, enderman, creeper))
colnames(final) <- c('Korea', 'History', 'Math', 'Science', 'English')
final

avg <- (mid + final) / 2
avg

#Q11
cars
#1
class(cars)
#2
dim(cars)
#3
head(cars)
#4
str(cars)
#5
colMeans(cars)
#6
max(cars$dist)
#7
subset(cars, max(dist) == dist)


#Q12
#1
is.matrix(InsectSprays)
#2
str(InsectSprays)
#3
tail(InsectSprays)
#4
levels(InsectSprays$spray)
#5
table(InsectSprays)
#6
InsectSprays.e <- subset(InsectSprays, InsectSprays$spray == 'E')
InsectSprays.e
#7
mean(InsectSprays.e$count)
