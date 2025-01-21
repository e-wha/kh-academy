install.packages('svDialogs')
library(svDialogs)
user.input <- dlgInput('input income')$res
user.input
income <- as.numeric(user.input)
income
tax <- income * 0.05
cat('세금 :', tax)

#LAB
height <- dlgInput('Input height(cm)')$res
height <- as.numeric(height)
weight <- dlgInput('Input weight(kg)')$res
weight <- as.numeric(weight)

height <- height / 100
BMI <- weight / height^2

cat('입력한 키는 ', height * 100, 'cm, 몸무게는 ', weight, 'kg 입니다. \n', sep = "")
cat('BMI는 ', BMI, '입니다.', sep = "")


#p209
getwd()
setwd('C://Temp')


#p211
air <- read.csv('airquality.csv', header = F)
air
head(air)
str(air)


#p213
my.iris <- subset(iris, Species == 'setosa')
write.csv(my.iris, 'my_iris.csv', row.names = F)


#p214
getwd()
install.packages('xlsx')
library(xlsx)

air <- read.xlsx('C:/Temp/airquality.xlsx', header = T, sheetIndex = 2)
air

my.iris <- subset(iris, Species == 'Setosa')
write.xlsx(my.iris, 'my_iris.xlsx', row.names = F)


#p217
library(ggplot2)
str(diamonds)
levels(diamonds$cut)
levels(diamonds$color)
levels(diamonds$clarity)

diamonds.new <- subset(diamonds, cut == 'Premium' & carat >= 2)
diamonds.new
write.csv(diamonds.new, 'diamonds_new.csv', row.names = F)
diamonds.load <- read.csv('diamonds_new.csv', header = T)
diamonds.load


#p219
print('출력 테스트!!')

a <- 10; b <- 20
sink('result.txt', append = F)
print('출력 테스트!!')
cat('a+b =', a+b, '\n')
print('출력 결과 !!')
sink()


#p222
air <- read.table('airquality.txt', header = T, sep = ' ')
air

new.iris <- subset(iris, Species = 'Setosa')
new.iris


#p223
height <- dlgInput('Input height(cm)')$res
height <- as.numeric(height)
weight <- dlgInput('Input weight(kg)')$res
weight <- as.numeric(weight)

height <- height / 100
BMI <- weight / height^2

sink('bmi.txt', append = T)
height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res
height <- as.numeric(height)
weight <- as.numeric(weight)
height <- height / 100
BMI <- weight / height^2
cat('bmi =', BMI, '\n')
sink()

result <- read.table('bmi.txt', sep = ' ', header = F)
result


#p225
library(svDialogs)
library(xlsx)

carprice.new <- read.csv('carprice.csv', header = T)
carprice.new
str(carprice.new)

input.type <- dlgInput('Input type')$res
input.city <- dlgInput('Input MPG.city')$res

input.city <- as.numeric(input.city)
result <- subset(carprice.new, Type == input.type & MPG.city >= input.city)

print(result)
sink('search.txt', append = T)
print(result)
sink()

write.xlsx(result, 'search.xlsx', row.names = F)


#p230
#01
library(svDialogs)
input.value <- dlgInput('Input a value')$res
input.value

#02
cat("\n")

#03
#A : 작업폴더, B : getwd(), C : setwd()

#04
#csv(comma seperated value)

#05
library(xlsx)
ds <- read.xlsx('data.xlsx', header = T, sheetIndex = 1)
write.xlsx(ds, 'data_new.xlsx', row.names = F)

#06
sink('result.txt', append = T)
cat(height, weight, BMI)
sink()

#07
library(svDiaglogs)
base <- dlgInput('삼각형의 밑변 값 입력 : ')$res
height <- dlgInput('삼각형의 높이 값 입력 : ')$res
base <- as.numeric(base)
height <- as.numeric(height)
area <- base * height / 2
area
cat('삼각형의 넓이 = ', area)

#Q08
read.table('ds_tab.txt', sep = '/t', header = F)

#Q09
ds <- read.table('ds.txt', sep = ' ', header = F)
ds
write.csv(ds, 'ds.csv', row.names = F)

#Q10
library(xlsx)
write.xlsx(iris, 'iris.xlsx', row.names = F)
new.iris <- read.xlsx('iris.xlsx', sheetIndex = 2)

#Q11
library(svDialogs)
sink('log.txt')
cat('----- x * y ----- \n')
sink()
x <- as.numeric(dlgInput('Input x')$res)
x <- as.numeric(dlgInput('Input x')$res)
sink('log.txt')
cat('x =', x, 'y =', y, 'result =', x * y)
sink()


