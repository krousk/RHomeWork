#남경훈 20.5.19/20.5.19

#문제1
#
#1
gender <- c('F','F','F','M','M','F','F','F','M','M')
class(gender)
dim(gender)
str(gender)

#2
table(gender)

#3
cg <- table(gender)
cg

class(cg)
dim(cg)
str(cg)

barplot(cg, main="class gender")

#4
pie(cg, main = "class gender")

#문제2
#
#1
season <- c('여름', '겨울', '봄','가을','여름','가을','겨울','여름','여름','가을')
season

class(season)
dim(season)
str(season)

#2
table(season)

#3
fv <- table(season)
fv

class(fv)
dim(fv)
str(fv)

barplot(fv, main = "four season vote")

fv.array <- fv[c(3,4,1,2)] #*
fv.array

barplot(fv.array, main = "four season vote.mod")

#4
pie(fv.array, main = "four season vote")

#문제3
#
#1*
score <-c(90, 85, 73, 80, 85, 65,78,50,68,96)
score

names(score) <- c("KOR", "ENG","ATH", "HIST","SOC","MUSIC","BIO","EARTH","PHY","ART")
score

#2
score

#3
mean(score)
median(score)

#4
sd(score)

#5*
which.max(score)

#6
boxplot(score)
boxplot(score)$out #*

#7*
hist(score, main="학생 성적",xlab="점수", ylab="빈도수", col="purple", las=1, breaks=5)

#
#
#문제4*
#
mtcars
head(wt)
wt <- c(mtcars[,6])
wt

cyl <- c(mtcars)
cyl
#1
mean(wt)
median(wt)
mean(wt, trim = 0.15)
sd(wt)

#2
summary(wt)

#3
table(cyl)
