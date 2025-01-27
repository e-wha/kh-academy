install.packages('treemap')
library(treemap)
data(GNI2014)
str(GNI2014)
help(GNI2014)

treemap(GNI2014,
        index = c('continent', 'iso3'),
        vSize = 'population',
        vColor = 'GNI',
        type = 'value',
        bg.labels = 'yellow',
        title = 'World GNI')


#p428
library(treemap)
st <- data.frame(state.x77)
str(st)
head(st)
st <- data.frame(st, stname = rownames(st))
head(st)

treemap(st,
        index = c('stname'),
        vSize = 'Area',
        vColor = 'Income',
        type = 'value',
        title = 'USA states area and income')


#p429
library(treemap)
st <- data.frame(state.x77)
st <- data.frame(st, stname=rownames(st))

treemap(st,
        index = c('stname'),
        vSize = 'Population',
        vColor = 'Illiteracy',
        type = 'value',
        title = 'USA states 인구와 문맹률')


#p431
library(treemap)
library(carData)
str(Ericksen)
head(Ericksen)
Ericksen
ds <- subset(Ericksen, city == 'state')
ds$stname <- rownames(ds)
head(ds)

treemap(ds,
        index = c('stname'),
        vSize = 'poverty',
        vColor = 'crime',
        type = 'value',
        title = '미국의 가난 및 범죄율')
