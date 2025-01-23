favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
ds <- table(favorite)
pie(ds, main = '선호계절',
    radius = 1,
    col = rainbow(4))


#p330
install.packages('plotrix')
library(plotrix)
pie3D(ds,
      main = 'favorite season',
      labels = names(ds),
      labelcex = 1,
      explode = 0.1,
      radius = 1,
      col = rainbow(3))


#p331
month = 1:12
late <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)

plot(month, late, main = 'late',
     type = 'l',
     lty = 1,
     lwd = 1,
     xlab = 'month',
     ylab = 'late')


#p336
str(ChickWeight)
c1 <- subset(ChickWeight, Chick == 1)
c21 <- subset(ChickWeight, Chick == 21)

plot(c1$Time,
     c1$weight,
     main = '병아리 체중 변화',
     type = 'b',
     col = 'red',
     xlab = 'Time',
     ylim = c(40, 400))
lines(c21$Time,
      c21$weight,
      type = 'b',
      col = 'blue')


#1번
install.packages('DAAG')
library(DAAG)

str(science)
table(science$school)
table(science$Class)

ds <- table(science$like)
ds
pie(ds,
    main = 'like',
    col = rainbow(8),
    radius = 1)


#2번
library(plotrix)
ds <- table(science$State)
pie3D(ds,
      main = 'stata',
      labels = names(ds),
      labelcex = 1,
      radius = 1,
      col = c('brown', 'green'))


#3번
str(LakeHuron)


#p339
str(cars)
dist <- cars$dist

boxplot(dist)

boxplot.stats(dist)


#p341
boxplot(Setal.Length ~ Species,
        data = iris,
        col = rainbow(1))

boxplot(iris$Sepal.Length ~ iris$Species,
        col = rainbow(3))

boxplot.stats(iris$Sepal.Length)


#p345
str(mtcars)

wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg, main = '중량-연비 그래프',
     xlab = '중량',
     ylab = '연비',
     col = rainbow(2),
     pch = 21)

#p347
vars <- c('mpg', 'disp', 'drat', 'wt')
target <- mtcars[, vars]
head(target)
plot(target, main = 'multi plots')


#p349
iris.2 <- iris[, 3:4]
head(iris.2)
levels(iris$Species)
group <- as.numeric(iris$Species)
head(group)
color <- c('red', 'green', 'blue')
plot(iris.2,
     main = 'Iris plot',
     pch = c(group),
     col = color)


#p353
library(DAAG)
str(tinting)
group <- as.numeric(tinting$tint)
group
color <- c('red', 'green', 'blue')
plot(tinting$it, 
     tinting$csoa,
     col = color[group],
     pch = c(group))


group <- tinting$agegp
group <- as.numeric(tinting$agegp)
clor <- c('red', 'blue')
plot(tinting$it, tinting$csoa,
     pch = c(group),
     col = color[group])


#p354
library(DAAG)
str(socsupport)
help("socsupport")
ds <-  table(socsupport$age)
head(ds)

pie3D(ds,
      main = '연령 분포',
      labelcex = 1,
      explode = 0.1,
      radius = 1,
      col = rainbow(length(ds)))

boxplot(socsupport$emotional ~ socsupport$country,
        main = '정서적 지원 제도 비교')

boxplot(socsupport$emotionalsat ~ socsupport$gender,
        main = '정서적 지원제도 만족도 비교')

boxplot(socsupport$emotionalsat ~ socsupport$age,
        main = '정서적 지원제도 만족도 비교',
        col = rainbow(5))

group <- as.numeric(socsupport$gender)
color <- c('blue', 'red')
plot(socsupport[, c('emotionalsat', 'tangiblesat', 'age')],
     pch=group,
     col=color[group])


#p358 ~ 359
#Q1
#1
library(carData)
pie(table(MplsStops$race))
#2
pie(table(MplsStops$problem),
    col = c('red' ,'blue'))
#3
pie(table(MplsStops$personSearch))
#4
MplsStops
gender <- subset(MplsStops$gender, MplsStops$personSearch == 'YES')
table(gender)
pie3D(table(gender),
      col = c('green', 'orange', 'yellow'))

#Q2
#1
library(DAAG)
data(greatLakes)
ds <- data.frame(year=1918:2009, greatLakes)
plot(ds$year, ds$Erie, main = 'Erie호 수위',
     type = 'b',
     xlab = '연도',
     ylab = '수위',
     col = 'red')
#2
plot(ds$year, ds$michHuron, main = 'michHuron호 수위',
     type = 'b',
     xlab = '연도',
     ylab = '수위',
     col = 'red')
#3
plot(ds$year, ds$Erie, main = '수위',
     type = 'b',
     xlab = '연도',
     ylab = '수위',
     col = 'red',
     ylim = c(173, 177.5))
lines(ds$year, ds$michHuron,
      type = 'b',
      col = 'blue')
lines(ds$year, ds$StClair,
      type = 'b',
      col = 'orange')

#Q3
#1
library(DAAG)
boxplot(cfseal$weight)
#2
boxplot(cfseal$heart)
boxplot.stats(cfseal$heart)
#3
group <- rep('old', nrow(cfseal))
group[cfseal$age < mean(cfseal$age)] <- 'young'
group <- factor(group)
boxplot(cfseal$weight ~ group,
        col = c('orange', 'green'))
#4
group <- rep('middle', nrow(cfseal))
Q1 <- summary(cfseal$weight)[2]
Q3 <- summary(cfseal$weight)[5]
boxplot.stats(cfseal$weight)
group[cfseal$weight < Q1] <- 'low'
group[cfseal$weight > Q3] <- 'high'
group <- factor(group)
boxplot(cfseal$weight ~ group)


#Q4
#1
library(DAAG)
data(greatLakes)
ds <- data.frame(greatLakes)
plot(ds$Erie, ds$michHuron,
     col = c('red', 'blue'))
#2
plot(ds, col = rainbow(4))


#Q5
#1
library(DAAG)
str(grog)
plot(grog$Beer, grog$Wine,
     main = '맥주와 와인 산점도',
     col = c('red', 'blue'))
#2
group <- as.numeric(grog$Country)
color <- c('red', 'blue')
plot(grog[, c('Beer', 'Wine', 'Spirit')],
     pch = group,
     col = color)


#test1
library(DAAG)
ds <- austpop
ds
plot(ds$year, ds$NSW,
     type = 'b',
     col = 'red',
     ylim = c(500, 6500))
lines(ds$year, ds$Vic,
      type = 'b',
      col = 'blue')
lines(ds$year, ds$Qld,
      type = 'b',
      col = 'orange')

#test2
library(DAAG)
ds <- houseprices
ds
plot(ds$area, ds$sale.price,
     col = c('red', 'blue'))