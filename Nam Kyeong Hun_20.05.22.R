#남경훈 20.05.21/20.05.22

#문1 *tabel)() 로 빈도수 지정했어야 했다. 방법 확인 후 다시. 일단 결과 같긴 하지만...
#라이브러리는 외부 패키지 쓸 때 꼭. ggplot 데이터 셋 aes x=,y= 순으로. 
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

#문제2 *역시 table 누락.
ggplot(mc, aes(cyl))+
  geom_bar(fill="green")+
  labs(x="실린더", y="빈도 수")+
  ggtitle("실린더")
  
#문제3 히스토그램에서는 빈위스 값이 중요함. 
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

#문제6 데이터가 숫자인지 문자인지, 범주형인지 아닌지 등등 분석, 판단필요.
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

