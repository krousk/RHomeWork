#남경훈 20.05.23/20.05.25

<<<<<<< HEAD
setwd ("C:\\R working space")
=======
setwd ("C:\\Rworkspace\\new-R-working-space")
>>>>>>> 36eb3e3c3a2286e776c87c024c794c02a2a21a21

ti <- read.csv(file="titanic_train.csv",
               header = T)
library(dplyr)
library(ggplot2)

ls(ti)
class(ti)
summary(ti)
str(ti)
head(ti)
tail(ti)


#전체 탑승 승객*완료
length(ti$name)
#*총 탑승자 수는 916명.*

#전체 승객 성별*완료 별로 중요하지는 않다. 그냥 보여주는 용도로. 
ggplot(ti, aes(x=sex))+
  geom_bar()+
  labs(x="성별",y="인원 수")+
  ggtitle("전체 승객 성별 현황")

pie(table(ti$sex))
#남성 581명, 여성 335명.
#남성이 여성에 비해 2배 정도 많은 수치.

#전체 탑승객 연령
ggplot(ti,aes(age))+
  geom_histogram(breaks=seq(0,75,by=1),
                 fill="blue")+
  ggtitle("탑승객 연령대")
#20~30세 사이에 주로 분포.

#객실별 승객
tc <- table(ti$pclass)
barplot(tc,main = "객실별 승객 수")
#1등급 230, 2등급 188, 3등급 498

#전체 승객 사망/생존
td <-ti$survived
td1<- table(td)
pie(td1)
#사망: 563명 생존:353

#사망 관련.
#사망자 성별
ti.dead <- ti%>%
  group_by(survived)%>%
  filter(survived==0)

ggplot(ti.dead,aes(x=sex))+
  geom_bar()
#남성이 여성보다 4배 넘게 사망.

#객실별 사망자
ti.d.c <- ti%>%
  group_by(pclass)%>%
  filter(survived==0)

ggplot(ti.d.c,aes(x=pclass))+
  geom_bar()+
  ggtitle("객실별 사망자")
#3등급 객실이 다른 객실 사망자에 비해 3배가량 많다. 

summary(ti.dead)

#사망자 연령
ggplot(ti.dead,aes(age))+
  geom_histogram(breaks=seq(0,75,by=1),
                 fill="black")+
  ggtitle("연령별 사망자")
#20~40세 사이에서 사망자 다수 발생


#사망자 요금 대표값:12/평균 23, 
#연령 대표값:28, 평균 30 결측치 128.
#남성의 사망자 비율이 여성보다 4배 이상임을 알 수 있다.


#생존자 정보
ti.alive <- ti%>%
  group_by(survived)%>%
  filter(survived==1)

ggplot(ti.alive,aes(x=sex))+
  geom_bar()+
  ggtitle("생존자 성별")

summary(ti.alive)

#생존자 연령
ggplot(ti.alive,aes(age))+
  geom_histogram(breaks=seq(0,75,by=1),
                 fill="green")+
  ggtitle("연령별 생존자")
#연령 상으로는 사망자와 비슷한 모양새. 

#생존자 요금 대표값: 26, 평균 46
#연령 대표값:29, 평균29.9
#생존자 비율에서는 여성이 남성보다 2배 이상의 수치를 기록했다.

<<<<<<< HEAD
=======
#
boxplot(ti$age)
boxplot(ti$age)$out
boxplot(ti$age)$n
boxplot(ti$age)$stats
boxplot(ti$age)$conf

boxplot(ti$fare)
boxplot(ti$fare)$out
boxplot(ti$fare)$n
boxplot(ti$fare)$stats
boxplot(ti$fare)$conf


>>>>>>> 36eb3e3c3a2286e776c87c024c794c02a2a21a21
