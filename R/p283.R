favorite <- c('winter', 'summer', 'spring', 'summer', 'summer', 'fall', 'fall', 'summer', 'spring', 'spring')
table(favorite)
ds <- table(favorite)
ds
barplot(ds, main = '좋아하는 계절',
        col=rainbow(4),
        xlab = '계절',
        ylab = '빈도',
        horiz = F,
        names = c('가을', '봄', '여름', '겨울'),
        las = 2)


#p292
age.A <- c(13709, 10974, 7979, 5000, 4250)
age.B <- c(17540, 29701, 36009, 33947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)

ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970', '1990', '2010', '2030', '2050')

barplot(ds, main='인구 추정',
        col = c('green', 'blue', 'yellow'),
        beside = T,
        legend.text = c('0~14세', '15~64세', '65세 이상'),
        args.legend = list(x = 'topleft', bty = 'n', inset = c(0, -0.05)))

par(mfrow = c(1,1), mar = c(5, 5, 5, 7))


#p301
ha <- c(54659, 61028, 53307, 46161, 54180)
he <- c(31215, 29863, 32098, 39684, 29707)
mc <- c(15104, 16133, 15222, 13208, 9986)
vs <- c(13470, 14231, 13401, 13552, 13193)
bs <- c(16513, 14947, 15112, 14392, 17091)

ds <- rbind(ha, he, mc, vs, bs)
colnames(ds) <- c('19.1Q', '19.2Q', '19.3Q', '19.4Q', '20.1Q')

barplot(ds, main = '사업부문별 매출액',
        col = c(rainbow(5)),
        horiz = T,
        beside = T,
        las = 1,
        xlab = '억원',
        ylab = '분기별',
        legend.text = c('H&A', 'HE', 'MC', 'VS', 'BS'),
        args.legend = list(x = 'topright', bty='n', inset=c(-0.25, 0)))

par(mfrow=c(1,1), mar = c(5,4,4,2)+.1)


#p303
par(mfrow = c(1,2))
hist(ds, main = '사업부문별 매출액')
barplot(ds, main = '사업부문별 매출액')

par(mfrow = c(1, 1))
head(cars)
dist <- cars$dist
dist
result <- hist(dist,
     main = '히스토그램 출력(제동거리)',
     xlab = '제동거리',
     ylab = '빈도수',
     border = 'red',
     col = rainbow(6),
     las = 2,
     breaks = 5)
result
freq <- result$counts
names(freq) <- result$breaks[-1]
freq


#q308
library(Stat2Data)
data(Diamonds)
str(Diamonds)
levels(Diamonds$Color)
levels(Diamonds$Clarity)

ds <- Diamonds$PricePerCt

hist(ds,
     main = '캐럿당 가격 분포',
     breaks = 9,
     xlab = '캐럿당 가격($)',
     ylab = '빈도수',
     las = 1)

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'


#p311
par(mfrow = c(2, 2))

hist(iris$Sepal.Length,
     main = 'Sepal.Length',
     col = 'orange')
barplot(iris$Sepal.Length)
pie(iris$Sepal.Length)
hist(iris$Sepal.Length)


#p316
par(mfrow = c(2, 3))
install.packages('carData')
library(carData)
str(Chile)
ds <- Chile
colors <- rainbow(20)
barplot(table(ds$region),
        main = '지역별 분포',
        col = colors[1:5])
barplot(table(ds$sex),
        main = '성별 분포',
        col = colors[6:7])
barplot(table(ds$education),
        main = '교육수준별 분포',
        col = colors[8:10])
hist(table(ds$age),
        breaks = 6,
        main = '연령',
        col = colors[1:6])
hist(table(ds$income),
        breaks = 4,
        main = '수입',
        xlab = 'income',
        col = colors[11:14])
hist(table(ds$statusquo),
        breaks = 9,
        main = '정책 지지도',
        xlab = 'support',
        col = colors[15:20])


#p317
install.packages('reshape2')
library(reshape2)
str(tips)
barplot(table(tips$sex),
        main = 'gender')
barplot(table(tips$day),
        main = 'Day of the week')
barplot(table(tips$time),
        main = 'time')
barplot(table(tips$size),
        main = 'size')
par(mfrow = c(1, 1))


tips.new <- tips
tips.new$perHead <- tips.new$total_bill / tips.new$size
color.5 <- rep('#a8dadc', 6)

par(mfrow = c(1, 3))
hist(tips.new$perHead,
     main = '1인당 주문 금액',
     xlab = '단위:달러',
     col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'perHead'],
     main = '1인당 주문 금액(런치)',
     xlab = '단위:달러',
     breaks = 4,
     col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'perHead'],
     main = '1인당 주문 금액(디너)',
     xlab = '단위:달러',
     breaks = 4,
     col = color.5)
par(mfrow = c(1, 1))


#p320
tips.new$percent <- tips.new$tip / tips.new$total_bill * 100
head(tips.new)

par(mfrow = c(1, 2))
res.lunch <- hist(tips.new[tips.new$time == 'Lunch', 'percent'],
                  main = '주문금액에 대한 팁 비율(점심)',
                  xlab = 'percent(%)',
                  breaks = 5)
res.dinner <- hist(tips.new[tips.new$time == 'Dinner', 'percent'],
                  main = '주문금액에 대한 팁 비율(저녁)',
                  xlab = 'percent(%)',
                  breaks = 10)


#p321
par(mfrow = C(1, 1))

res.lunch
res.dinner
res <- rbind(lunch = c(0, res.lunch$counts), dinner = res.dinner$counts[1:6])
colnames(res) <- res.dinner$breaks[2:7]
barplot(res,
        main = '식사 시간에 따른 팁 비율',
        col = rainbow(2),
        legent.text = c('Lunch', 'Dinner'))


#p323~325
#Q1
#A : 막대그래프, B : 히스토그램

#Q2
survey <- c(T, F, T, T, F, T, F, F, F, F)
colors()
barplot(table(survey), col=rainbow(2), names = c('No', "Yes"))

#Q3
par(mfrow = c(1, 1))
barplot(table(mtcars$cyl), main = '실린더 종류별 분포',
        col=rainbow(3), ylab = '실린더의 수', horiz = T)

#Q4
ds <- sleep$extra
hist(ds, main = 'Histogram of sleep',
     xlab = 'Increase in hiours of sleep',
     breaks = 4)

#Q5
ds <- table(mtcars$cyl, mtcars$gear)
color <- c('tomato', 'salmon', 'peachpuff')
barplot(ds, main = 'Distribution of carburetors',
        xlab = 'Number of gear',
        ylab = 'frequency',
        col = color,
        beside = T,
        legend.text = c('cyl 4', 'cyl 6', 'cyl 8'),
        args.legend = list(x = 'topright', bty = 'n'))

#Q6
ds <- trees$Height
color.6 <- rep('#f1faee', 6)
color.6[3:5] <- '#e63946'
hist(ds, main = 'Histogram of Black Cherry Trees',
        xlab = 'Height(ft)',
        ylab = 'Frequency',
        col = color.6)

#Q7
par(mfrow = c(3, 2), mar = c(5, 4, 4, 3))
par(mfrow = c(1, 1), mar = c(5, 4, 4, 3)+.1)

#Q8
male <- c(6.9, 30.4, 80.4)
female <- c(4.9, 38.2, 82.7)
ds <- rbind(male, female)
colnames(ds) <- c('samsung', 'apple', 'huawei')
barplot(ds, main = '성별에 따른 브랜드 선호도',
        horiz = T,
        beside = T,
        las = 1,
        legend.text = c('남자', '여자'),
        args.legend = list(x = 'right', bty = 'n', inset = c(-0.1, 0)),
        col = c('#ffe66d', '#00afb9'))

#Q9
holyday <- c(14, 15, 15, 16, 14, 11, 12)
holyday.actual <- c(15, 35, 38, 36, 34, 32, 32)
ds <- rbind(holyday, holyday.actual)
colnames(ds) <- c('한국', '일본', '독일', '러시아', '미국', '프랑스', '호주')
barplot(ds, main = '주요 국가별 공휴일 현황',
        xlab = '국가',
        beside = T,
        col = c('grey', 'skyblue'),
        legend.text = c('공휴일 수', '실제 쉬는 날'),
        args.legend = list(x = 'topleft', bty = 'n'))



#test1
piece2017 <- c(116215, 3437, 26183, 7522, 147, 1411)
piece2016 <- c(104359, 3393, 24527, 7058, 102, 975)
ds <- rbind(piece2017, piece2016)
colnames(ds) <- c('시', '소설', '수필', '평론', '희곡', '기타')
barplot(ds, main = '문인잡지의 작품 발표 현황',
        xlab = '작품 종류',
        ylab = '발표 건수',
        col = rainbow(2),
        legend.text = c(2017, 2016))

#test2
rivers
res <- hist(rivers, main = 'Histogram of NorthAmerica Rivers Length',
     xlab = 'miles',
     breaks = 8,
     col = 'skyblue',
     border = 'navy')
res$breaks
res$counts

#test3
sunspot <- as.vector(sunspot.year)
color <- rep('skyblue', 10)
color[1] <- 'deeppink'
color.border <- rep('navy', 10)
color.border[1] <- 'violetred'
res <- hist(sunspot, main = 'Histogram of sunspot',
            xlab = 'Tearty of number sunspot',
            col = color,
            border = color.border)
res$breaks
res$counts


#test4
par(mfrow = c(1, 3))
hist(trees$Girth, main = 'Girth',
     xlab = 'inch',
     breaks = 4)
hist(trees$Height, main = 'Height',
     xlab = 'ft',
     breaks = 3)
hist(trees$Volume, main = 'Volume',
     xlab = 'ft',
     breaks = 4)


#test5
library(ggplot2)
ds <- diamonds
str(ds)
par(mfrow = c(1, 1), mar = c(3, 6, 3, 3))
barplot(table(ds$cut), main = 'Quality of the cut',
        xlab = 'cut',
        las = 1,
        col = 'pink')

hist(ds$depth, main = 'Histogram of Depth',
     xlab = 'percentage',
     col = 'wheat')

par(mfrow = c(2, 1))
par(mfrow = c(1, 1)+.1)


#test6
getwd()
setwd('C:/Temp')
ds.all <- read.csv('Backpack.csv', header = T)
str(ds.all)
ds <- table(ds.all$Year, ds.all$BackProblems)
barplot(ds, main = 'BackProblem',
        names = c('No', 'Yes'),
        beside = T,
        legend.text = c('0 year', '1 year', '2 year', '3 year', '4 year', '5 year', '6year'),
        args.legend = list(x = 'topright', bty = 'n'))
Backpack.pb <- subset(ds.all, ds.all$BackProblems == 1)
Backpack.pb
ds.pb <- table(Backpack.pb$Year, Backpack.pb$Sex)
length(Backpack.pb$Year)
ds.pb
barplot(ds.pb, main = 'BackPack 허리 문제',
        beside = T,
        legend.text = c('0 year', '1 year', '2 year', '3 year', '4 year', '5 year'))
