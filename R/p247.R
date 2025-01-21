dim(iris)
norow <- nrow(iris)
norow
mylabel <- c()
for (i in 1:norow) {
  if(iris$Petal.Length[i] <= 1.6) {
    mylabel[i] <- 'L'
  } else if(iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}

print(mylabel)



#p262
getwd()
setwd('C:/git/R')
source('myfunc.R')

sub1 <- c(14, 16, 12, 20, 8, 6, 12, 18, 16, 10)
sub2 <- c(18, 14, 14, 16, 10, 12, 10, 20, 14, 14)
sub3 <- c(44, 38, 30, 48, 42, 50, 36, 52, 54, 32)
score <- data.frame(sub1, sub2, sub3)

result <- determine(score)
result

result <- determine(head(score, 3))
result


#p264
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
which(score==69)
which.max(score)
idx <- which(score <= 60)
idx
score[idx] <- 61
idx
score


#p267
install.packages('Stat2Data')
library(Stat2Data)
data('ChildSpeaks')
str(ChildSpeaks)
idx <- which(ChildSpeaks$Age < 9)
idx
ChildSpeaks[idx, 'm1'] <- 5
idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 15)
ChildSpeaks[idx, 'm1'] <- 4
idx <- which(ChildSpeaks$Age  >= 15 & ChildSpeaks$Age < 21)
ChildSpeaks[idx, 'm1'] <- 3
idx <- which(ChildSpeaks$Age >= 21 & ChildSpeaks$Age < 27)
ChildSpeaks[idx, 'm1'] <- 2
idx <- which(ChildSpeaks$Age >= 27)
ChildSpeaks[idx, 'm1'] <- 1
head(ChildSpeaks)
ChildSpeaks$m2 <- NA
head(ChildSpeaks)
str(ChildSpeaks)

idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks$m2[idx] <- 1
head(ChildSpeaks, 21)
idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90)
ChildSpeaks$m2[idx] <- 2
idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110)
ChildSpeaks$m2[idx] <- 3
idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130)
ChildSpeaks$m2[idx] <- 4
idx <- which(ChildSpeaks$Gesell >= 130)
ChildSpeaks$m2[idx] <- 5
head(ChildSpeaks, 21)

ChildSpeaks$total <- ChildSpeaks$m1 + ChildSpeaks$m2
ChildSpeaks$result <- NA
ChildSpeaks
idx <- which(ChildSpeaks$total < 3)
ChildSpeaks$result[idx] <- '매우느림'
idx <- which(ChildSpeaks$total >= 3 & ChildSpeaks$total < 5)
ChildSpeaks$result[idx] <- '느림'
idx <- which(ChildSpeaks$total >= 5 & ChildSpeaks$total < 7)
ChildSpeaks$result[idx] <- '보통'
idx <- which(ChildSpeaks$total >= 7 & ChildSpeaks$total < 9)
ChildSpeaks$result[idx] <- '빠름'
idx <- which(ChildSpeaks$total >= 9)
ChildSpeaks$result[idx] <- '매우빠름'

ChildSpeaks


#p277
#Q1
n <- 12
if (n %% 2 == 1) {
  type <- 'odd'
} else {
  type <- 'even'
}
print(type)

#Q2
res <- ifelse(n < 0, -n, n)
res

#Q3
input <- 1:10
n <- length(input)
switch <- TRUE
result <- 1

if (switch == T) {
  for (i in 1:n) {
    result <- result * i
  }
} else {
  result <- sum(input)
}
print(result)


#Q04
result <- 1
for (i in 1:20) {
  if (i %% 2 == 1) {
    result <- result * i
  }
}
print(result)

#Q05
result <- 1
n <- 1
while(n <= 20) {
  if (n %% 2 == 1) {
    result <- result * i
  }
  n <- n + 1
}
print(result)

#Q06
apply(mtcars[,c(1,4,6)], 2, mean)

#Q07
triangles.area <- function(base, height) {
  area <- base * height / 2
  return(area)
}
area <- triangles.area(5.2, 4.6)
area

#Q08
multiple.answer <- function(data) {
  res.min <- min(data)
  res.max <- max(data)
  res.avg <- avg(data)
  result <- 
}