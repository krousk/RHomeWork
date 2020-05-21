#남경훈 20.05.21/20.05.22

#문1
library(ggplot2)
library(dplyr)

filter(mc, gear<=5)

mc <- mtcars
mc
class(mc)

ggplot(mc, aes(gear))+
  geom_bar()+
  labs(x="기어의 수", y="빈도 수")+
  ggtitle("기어의 수")

#문제2
ggplot(mc, aes(cyl))+
  geom_bar(fill="green")+
  labs(x="실린더", y="빈도 수")+
  ggtitle("실린더")
  
#문제3
ggplot(mtcars, aes(x=mpg))+
  geom_histogram(binwidth = 5.0)

#문제4
trees
tg <- trees
tg

ggplot(tg, aes(x=Gitrh))+
  geom_histogram(fill="steelblue",
    binwidth = 3.0)+
  labs(xlab="테두리",
       ylab="높이")+
  ggtitle("테두리-높이")

#문제5
mtcars

ggplot(mtcars, aes(x=mpg, y=wt, color=gear))+
  geom_point()

#문제6
cyl.number <- mtcars
mtcars$cyl
ggplot(mtcars, aes(y=mpg),fill=mtcars$cyl)+
  geom_boxplot()

#문제7
year <- 2015:2026
pop <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
df <- data.frame(year,pop)
df

ggplot(df,aes(x=year, y=pop))+
       geom_line()

