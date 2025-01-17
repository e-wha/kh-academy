install.packages('ggplot2')
library(ggplot2)
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point()

help("sqrt")
help("log")

Sys.time()

max

#p71
a <- "Hello World"
b <- "R programming"
c <-  paste(a, b)
print(c)


#p71(6번)
37+7
4 * 5 - 10
99 / 3
152 %% 7
5^2
2^10
(11 * 4) - (13 %% 4)
(9  - 7) %% 3


#p71(7번)
max(20, 11, 17, 21, 19)
min(20, 11, 17, 21, 19)
abs(-20)
sqrt(25)
