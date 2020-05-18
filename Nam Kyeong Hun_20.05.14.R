#

d1 <- 1:50
d2 <- 51:100

(d1 <- 1:50)
(d2 <- 51:100)

length(d2)

d1+d2
d2-d1
d1*d2
d2%%d1 #무식하게 /하지 말자;

sum(d1)
sum(d2)

sum(d1)+sum(d2) #일단 결과가 맞기는 했는데...

max(d2)
min(d2)

a1 <- mean(d1) #결과는 기적적으로 맞았으나 과정이 틀렸다.
a2 <- mean(d2)
a2-a1

sort(d1, decreasing = TRUE)

z1 <- d1[sort(d1, decreasing = FALSE),10]  #틀림. 다시할 것.
z2 <- d2[sort(d2, decreasing = FALSE),10]
(d3 <- z1, z2)


(v1 <- 51:90)

v1[v1<60] #크다, 작다, []기호 넣는 거. 그냥 값 출력 같은 기초가 안된 거 같으니 반복숙달.

v1<70

sum(v1>65)  #하...
