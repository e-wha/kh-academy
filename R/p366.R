install.packages('carData')
library(carData)
str(TitanicSurvival)

room.class <- TitanicSurvival$passengerClass
room.class
tbl <- table(room.class)
tbl
sum(tbl)

barplot(tbl, main = '선실별 탑승객',
        xlab = '선실 등급',
        ylab = '탑승객수',
        col = rainbow(3))
ratio = tbl / sum(tbl)
ratio


#p369
str(state.x77)
head(state.x77)

grad <- state.x77[, 'HS Grad']
grad

summary(grad)
var(grad)
sd(grad)

hist(grad,
     main = '주별 졸업률',
     xlab = '졸업률',
     ylab = '주의 개수',
     col = rainbow(7))

boxplot(grad,
     main = '주별 졸업률',
     col = 'orange')

idx <- which(grad == min(grad))
grad[idx]

idx <- which.min(grad)
idx

idx <- which(grad == max(grad))
grad[idx]

idx <- which(grad > mean(grad))
grad[idx]


#p373
getwd()
setwd('C:\\Temp')
getwd()
ds <- read.csv('fdeaths.csv', row.names = 'year')
str(ds)
head(ds)

my.col <- c('black', 'blue', 'red', 'green', 'purple', 'darkgray')
my.lty <- 1.6


#p387
install.packages('Ecdat')
library(Ecdat)
str(Hdma)
head(Hdma)
tbl <- table(Hdma$deny)
tbl
tbl <- tbl / sum(tbl)
tbl
names(tbl) <- c('승인', '거절')
barplot(tbl,
        main = '주택담보대출 승인/거절',
        col = c('green', 'yellow'),
        ylim = c(0, 1),
        ylab = '비율')
hist(Hdma$lvr,
     main = '주택가격대비 대출금 비율',
     col = rainbow(10))
black.yn <- table(Hdma$black)
head(black.yn)

black.deney <- sum(Hdma$black == 'yes' & Hdma$deny == 'yes') / black.yn['yes']
black.deney

non.black.deney <- sum(Hdma$black == 'no' & Hdma$deny == 'yes') / black.yn['no']
non.black.deney

df <- Hdma[, c('dir', 'hir', 'ccs', 'mcs')]
point.col <- c('green', 'red')
plot(df, col = point.col[Hdma$deny])


#p391
#Q1
# 데이터 전처리ㅣㅑㅠㅅㄱㄻ

#Q2
#3 산점도

#Q3
#3 원그래프

#Q4
#1
library(Ecdat)
str(Hdma)
plot(Hdma$self)
#2
Hdma$single
pie(table(Hdma$single))
#3
Hdma$uria
boxplot(Hdma$uria)
boxplot.stats(Hdma$uria)  
boxplot.stats(Hdma$uria)
#4
library(Ecdat)
str(Hdma)
head(Hdma)
tbl <- table(Hdma$self)
str(table(Hdma$self))
tbl
barplot(tbl, main = '자영업 어부 확인',
        col = rainbow(2))
deny.hir <- mean(Hdma$hir[Hdma$deny == 'yes'])
deny.hir
approve.hir <- mean(Hdma$hir[Hdma$deny == 'no'])
approve.hir
cat('승인 거절 :', approve.hir, deny.hir, '\n')


#p395
score <- c(90, 70, NA, 40, 60)
is.na(score)
sum(score, na.rm = T)

score <- c(90, 70, NA, 40, 60)
score[is.na(score)] <- 0
score
sum(score)

score <- c(90, 70, NA, 40, 60)
score <- as.vector(na.omit(score))
score
sum(score)

str(airquality)
ozone <- airquality$Ozone
ozone[is.na(ozone)] <- 0
ozone


#p399
ds <- iris
head(ds)
ds


#p401
library(carData)
str(UN)

col_na <- function(y){
  return(sum(is.na(y)))
}
apply(UN, 2, FUN = col_na)


mean(UN$lifeExpF, na.rm = T)
tmp <- UN[, c('pctUrban', 'infantMortality')]
tmp <- tmp[complete.cases(tmp), ]
tmp
colMeans(tmp)


#p402
v1 <- c(1, 7, 6, 8, 4, 2, 3)
v1
v1 <- sort(v1, decreasing = T)
v1


#p405
head(iris)
iris.order <- order(iris$Sepal.Length)
iris.order

iris[order(iris$Sepal.Length), ]


#p407
library(CarData)
str(Highway1)
head(Highway1)
Highway1[order(Highway1$rate, decreasing = T), ]

tmp <- Highway1[order(Highway1$len, decreasing = T), 'len']
tmp
sum(tmp[1:10])

tmp <- Highway1[order(Highway1$adt), c('adt', 'rate')]
tmp
tmp[1:10, ]

tmp <- Highway1[order(High$slim, decreasing = T), c('len', 'adt', 'rate')]
tmp
tmp[1:5, ]


#p410
dim(iris)
idx <- sample(1:nrow(iris), size = 50, replace = F)
iris.50 <- iris[idx, ]
dim(iris.50)
head(iris.50)

sample(1:20, size = 5)
sample(1:20, size = 5)
sample(1:20, size = 5)

sample(1:20, size = 5, replace = F)
sample(1:20, size = 5, replace = F)
sample(1:20, size = 5, replace = F)


#p411
idx <- sample(nrow(state.x77), size = 10, replace = F)
state.10 <- state.x77[idx, ]
state.10


#p412
comb <- combn(1:5, 3)
comb


x <- c('red', 'green', 'blue', 'black', 'white')
com <- combn(x, 2)
com

for (i in 1:ncol(com)) {
  cat(com[, i], '\n')
}


#p413
sp <- levels(iris$Species)
sp
sp.2 <- combn(sp, 2)
sp.2


#p414
library(carData)
str(KosteckiDillon)
head(KosteckiDillon)

tot.mean <- mean(KosteckiDillon$dos)
tot.mean
a <- (1:5) * 0.1
a

for (rate in (1:5) * 0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon) * rate)
  sam.data <- KosteckiDillon[idx, 'dos']
  tmp.mean <- mean(sam.data)
  cat('Diff :', rate, tot.mean - tmp.mean, '\n')
}

cbn <- combn(1:5, 3)
cbn
ncol(cbn)


#p415
head(iris)
agg <- aggregate(iris[, -5], by = list(iris$Species), FUN = max)
agg

agg <- aggregate(iris[, 1], by = list(품종 = iris$Species), FUN = max)
agg


#p418
library(carData)
data(CES11)
str(CES11)

tbl <- table(CES11$abortion)
tbl
tbl.rate <- tbl / nrow(CES11)
tbl.rate

agg <- aggregate(CES11[, 'abortion'], by=list(성별 = CES11$gender), FUN = table)
agg.2 <- agg[, 2]
agg
agg.2
agg.2[1, ] <- agg.2[1, ] / sum(agg.2[1, ])
agg.2[2, ] <- agg.2[2, ] / sum(agg.2[2, ])
rownames(agg.2) <- agg[, 1]
agg.2
agg <- aggregate(CES11[, 'abortion'], by = list(지역 = CES11$urban), FUN=table)
agg.2 <- agg[, 2]
agg
