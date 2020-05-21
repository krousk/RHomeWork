#남경훈 20.05.19/20.05.20
#
#문제1
income <- c(121,99,41,35,40,29,35,24,50,60)
edu.time <-c(19,20,16,16,18,12,14,12,16,17)

edin <- data.frame(income,edu.time)
edin

plot(income~edu.time, edin)
Q1 <- lm(income~edu.time, data=edin)
abline(Q1)

cor(income, edu.time)

#수익과 교육기간 사이에는 약 0.79의 상관계수가 있는 것으로 나타났다. 양의 상관관계
#이를 바탕으로 볼 때, 교육기간이 길어질 수록 수익 역시 증가한다고 볼 수 있다.

#문제2
grade <- c(77.5, 60, 50, 95, 55, 85, 72.5, 80, 92.5, 87.5)
viewtime <- c(14,10, 20,  7, 25,  9, 15,   13,  4,   21)
grade
viewtime

grti <- data.frame(grade, viewtime)
grti

plot(grade~viewtime, grti)
Q2 <- lm(grade~viewtime, data = grti)
abline(Q2)

cor(grade,viewtime)
#성적과 시청시간 사이에는 약 -0.62의 상관계수가 있는 것으로 나타났다. 음의 상관관계
#따라서, 시청시간이 길어질수록 성적이 떨어진다고 볼 수 있다.

#문제3* 답은 맞다.
mtcars
head(mtcars)  #*

vs <- c("mpg","cyl", "disp","hp", "drat", "wt", "qsec","vs", "am", "gear","carb")
vs
vst <- mtcars[,vs]
head(vst)

pairs(vst, main="Multi Plots" )
cor(vst)

#wt가 제일 상관성이 높다.

#문제4
year <- c(2015:2026)
year
pop <- c(51014, 51245,51446,51635,51811,51793,52123,52261,52388,52504,52609,52704)
pop

plot(year, pop, main="예상 인구 수 추계")


#문제5*
library(rJava)
library(xlsx)

#*데이터 분석을 어떻게, 무슨 방향으로 할 것인지 전략구축.
setwd("C:\\R working space\\")
act <- read.csv(file= 'C:\\R working space\\도로교통공단_시도_시군구별_월별_교통사고(2018).csv',
                header=T)
act
#문제 정의
#각 지역별 월별 발생건수, 사망자수, 부상자수를 취합한다.
#
head(act)
tail(act)
class(act)
dim(act)
str(act)

act$시도 <- as.character(act$시도) #양이 많아 쉽지가 않으니 분할.
act$시도
act$시군구 <- as.character(act$시군구)
act$시군구
act$월 <-act$월
act$월

month <- c()
for ( i in 1:nrow( act ) ) {
    if ( act[ i, "월" ] == "01월" ) {
        month[ i ] <- 1
    } else if ( act[ i, "월" ] == "02월" ) {
        month[ i ] <- 2
    } else if ( act[ i, "월" ] == "03월" ) {
        month[ i ] <- 3
    } else if (  act[ i, "월" ] == "04월" ) {
        month[ i ] <- 4
    } else if ( act[ i, "월" ] == "05월" ) {
        month[ i ] <- 5
    } else if ( act[ i, "월" ] == "06월" ) {
        month[ i ] <- 6
    } else if ( act[ i, "월" ] == "07월" ) {
        month[ i ] <- 7
    } else if ( act[ i, "월" ] == "08월" ) {
        month[ i ] <- 8
    } else if ( act[ i, "월" ] == "09월" ) {
        month[ i ] <- 9
    } else if ( act[ i, "월" ] == "10월" ) {
        month[ i ] <- 10
    } else if ( act[ i, "월" ] == "11월" ) {
        month[ i ] <- 11
    } else if ( act[ i, "월" ] == "12월" ) {
        month[ i ] <- 12
    }  
}
month
    
act <- data.frame(act,month)
act
head(act)
tail(act)

local <- unique(act[,1])  #unique 함수
local

local.seoul <- act[act$시도==local[1],]
local.seoul
dim(local.seoul)