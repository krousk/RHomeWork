setwd ("C:\\R working space")

ti <- read.csv(file="titanic_train.csv",
               header = T)
library(dplyr)
library(ggplot2)
library(mice)

class(ti)
str(ti)
summary(ti)

#변수 결측치 확인 <- 일단 이거 쓰자.
for(i in 1:ncol(ti)){
    this.na <- is.na(ti[i])
    cat(colnames(ti)[i],"\t",sum(this.na),"\n")
}
#age와 body 변수에서 결측치 확인. 이중 body는 버리고 age만 확인.


#age 변수 결측치 및 이상치, 평균치 확인
ti.nomiss <- ti %>% filter(!is.na(age))
mean(ti.nomiss$age)
summary(ti.nomiss$age)
#

#상관계수
cor(ti.nomiss$age, ti.nomiss$survived)






ti.sex <- as.numeric(ti$sex)



result.cor <- as.data.frame(abs(is.na(ti)))
result.cor

table(is.na(ti$sex))
table(is.na(ti$age))

complete.cases(ti)

tix <- ti[complete.cases(ti)]











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


pie(table(ti.dead$sex))
table(ti.d.c$pclass)

#산점도
plot(age~survived, data = ti)

plot(age~fare,data = ti)
res <- lm(age~fare, data = ti)
abline(res)

dia <- as.vector(na.omit(ti$age))
dif <- as.vector(na.omit(ti$fare))

cor(dia,dif)
warning(cor(ti$age,ti$fare))

plot(survived~pclass, data = ti)
cor(ti$survived,ti$pclass)

plot(ti$age,data=ti)

ti.age <- ti$age
ti.sur <- ti$survived
