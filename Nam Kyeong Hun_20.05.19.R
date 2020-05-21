#남경훈 20.5.19/20.5.19

#문제1
#
#1 변수 하나, 값의 형태는 범주형. 남,여 두 종류 뿐이니까.
gender <- c('F','F','F','M','M','F','F','F','M','M')
class(gender)
dim(gender)
str(gender)

#2            해당하는 범주의 빈도수.          cg까지 여기서 적었어야 함.
table(gender)

#3
cg <- table(gender)
cg

class(cg)
dim(cg)
str(cg)

barplot(cg, main="class gender")   #* xlab, ylab 빠짐.  히스토그램에서 x는 구간, 막대그래프에서는

#4 비율을 표현할때는 파이가 더 유리.
pie(cg, main = "class gender")

#문제2
#
#1
season <- c('여름', '겨울', '봄','가을','여름','가을','겨울','여름','여름','가을')
season

class(season)
dim(season)
str(season)

#2  이거도 fv를 여기에다 적었어야 했음.
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
#1* names 함수 까먹었음.
score <-c(90, 85, 73, 80, 85, 65,78,50,68,96)
score

names(score) <- c("KOR", "ENG","ATH", "HIST","SOC","MUSIC","BIO","EARTH","PHY","ART")
score

#2
score

#3
mean(score)  #데이터 대표는 가능하지만 이상치에 영향을 받음
median(score) #그래서 중앙값 이용.

#4 표준편차가 크다는 것은 값이 들쓕날쑥하다는 뜻이다. 
sd(score)

#5* 힌트: names, max, ==
which.max(score)

#6  면적이 중요함. 1사분위 쪽에 모여있다.
boxplot(score)
boxplot(score)$out #* 이상치 없으면 그냥 없다고 하면 됨.

#7* 이건 또 왜 이렇게 복잡하게 했다냐... 구간별로빈도수 표현하는 게 히스토그램. 전체적인 데이터의 구간별 분포가 고르냐 치우쳐있느냐를 확인. 
hist(score, main="학생 성적",xlab="점수", ylab="빈도수", col="purple", las=1, breaks=5)

#
#
#문제4* 그냥 다 틀렸으니 처음부터 다시 하자.       #일정한 형태로 구성이 된다면 범주형으로 간주.
#head, tail 적용하는 거 다시 생각할 것.
mtcars
head(wt)
wt <- c(mtcars[,6])
wt

cyl <- c(mtcars)
cyl
#1 여긴 맞았는데.... 모양이 다름.   분포가 비슷. 특정한 방향으로 치우친 데이는 아님. 
mean(wt)
median(wt)
mean(wt, trim = 0.15)
sd(wt)

#2 이것도 값은 맞긴 한데... 다시할 것. 4분위수, 최소최대값 등을 구할 때 사용.(2사분위-중앙값)
summary(wt)

#3 여기서부터 막힘. $~~ 하는 거가 문제. 실린더 수는 범주형으로 간주. 그래서 도수분포표, 막대, 원형그래프 등등 가능.
table(cyl)


#문제에서, 데이터가 고르게 분포되지는 않음. 종모양이어야 고른 것. 
#그룹으로 그래프를 보겠다는 건 서로간의 형태를 보겠다는 것. 8번 문제.
