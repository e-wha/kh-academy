library(carData)

str(Chile)
help(Chile)
head(Chile)

sum(is.na(Chile))
ch <- Chile[complete.cases(Chile), ]
sum(is.na(ch))

set.seed(100)
idx <- sample(nrow(ch), nrow(ch) * .6)
ch60 <- ch[idx, ]
str(ch60)

agg <- aggregate(ch60[, 'population'], by=list(지역=ch60$region), sum)
agg[order(agg$x, decreasing = T), ]

table(ch60$vote)

no.people <- table(ch60$sex)
no.people
tmp <- subset(ch60, vote == 'Y')
tmp
agg <- aggregate(tmp[, 'vote'], by=list(성별=tmp$sex), length)

yes.ratio <- agg$x / no.people
yes.ratio

no.region <- table(ch60$region)
tmp <- subset(ch60, vote =='Y')
agg <- aggregate(tmp[, 'vote'], by=list(지역=tmp$region), length)
yes.ratio <- agg$x / no.region
yes.ratio


#p422 ~ 423
#Q1
library(carData)
for (col in colnames(Chile)) {
  this.na <- is.na(Chile[, col])
  cat(col, '\t', sum(this.na), '\n')
}

#Q2
library(carData)
no.whole <- nrow()
tmp <- sum(complete.cases(Chile))
no.whole
tmp
no.na <- (no.whole-tmp) / no.whole
no.na

#Q3
tmp <- airquality
tmp[is.na(tmp$Ozone), 'Ozone'] <- 0
tmp[is.na(tmp$Solar.R), 'Solar.R'] <- 0
head(airquality)
head(tmp)

#Q4
sort(airquality$Solar.R, decreasing = T)

#Q5
head(airquality)
airquality[order(airquality$Solar.R, decreasing = T), c('Month', 'Day', 'Solar.R')]

#Q6
tmp <- airquality[order(airquality$Solar.R), c('Month', 'Day')]
tmp[1:10, ]

#Q7
library(carData)
str(CES11)
head(CES11)
set.seed(1234)
idx <- sample(nrow(CES11), 200)
tmp <- CES11[idx, 'urban']
table(tmp)

#Q8
library(carData)
set.seed(1234)
idx <- sample(nrow(CES11), nrow(CES11) * .2)
tmp <- CES11[idx, 'education']
table(tmp)
help(CES11)

#Q9
food <- c('김밥', '라면', '쫄면', '칼국수', '아메리카노')
tmp <- combn(food, 3)
tmp

condi <- tmp[1, ] == '라면' | tmp[2, ] == '라면' | tmp[3, ] == '라면'
tmp[, condi]

#Q10
library(carData)
str(Leinhardt)
head(Leinhardt)
help("Leinhardt")
#1
df <- Leinhardt[complete.cases(Leinhardt),]
df
agg <- aggregate(df[, 'infant'], by=list(대륙=df$region), mean)
agg
#2
df <- Leinhardt[complete.cases(Leinhardt), ]
avg.income <- mean(df$income)
avg.income
head(df)
df$group <- NA
head(df)
df$group[df$income >= avg.income] <- 'HIGH'
df$group[df$income < avg.income] <- 'LOW'
head(df)
agg <- aggregate(df[, 'infant'], by=list(그룹=df$group), mean)
agg

#Q11
library(carData)
str(Ericksen)
head(Ericksen)
#1
agg <- aggregate(Ericksen[, 'monority'], by=list(지역=Ericksen$city), mean)
agg
#2
df <- Ericksen
head(df)
head(df$group) <- NA
head(df)
df$group[df$minorty >= 25] <- 'HIGH'
df$group[df$minortu < 25] <- 'LOW'
agg <- aggregate(df[, c('crime', 'poverty')], by=list(그룹=df$group), mean)
agg
#3
library(carData)
df <- Ericksen
df$group <- NA
df$group[df$highschool < 28] <- 'A'
df$group[df$highschool >= 28 & df$highschool <= 40] <- 'B'
df$group[df$highschool > 40] <- 'C'
agg <- aggregate(df[, c('housing', 'crime', 'poverty')], by=list(df$group), mean)
agg
