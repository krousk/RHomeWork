#남경훈 20.05.26/20.05.27

Sys.setenv(JAVA_HOME="C:/Users/life/corretto/jdk11.0.7_10")
install.packages("wordcloud")  
install.packages("wordcloud2") 
install.packages("RColorBrewer") 

library(multilinguer)
library(KoNLP)
useNIADic()

library(wordcloud)
library(wordcloud2)
library(RColorBrewer)

library(dplyr)
library(ggplot2)

setwd('C://Users//life//Desktop//남경훈 - wordcloud_problem')

#문제1
text1 <- readLines('ex_10-1.txt', encoding = "UTF-8")
text2 <- readLines('ex_10-2.txt', encoding = "UTF-8")
text3 <- readLines('ex_10-3.txt', encoding = "UTF-8")

#1-1
text1.n <- sapply(text1, extractNoun, USE.NAMES = F) 
text1.n

text1.n.c <- unlist(text1.n)
text1.n.c.w <- table(text1.n.c)

sort.text1 <- sort(text1.n.c.w, decreasing = T)[1:10]
sort.text1 <- sort.text1[-1]
sort.text1 <- sort.text1[-3]
sort.text1 <- sort.text1[-4]
sort.text1 <- sort.text1[-7]

pal1 <- brewer.pal(9, 'Blues')[5:9]

wordcloud(names(sort.text1),
          freq = sort.text1,
          main.freq=3,
          random.order = .1,
          rot.per = .1,
          colors=pal1)

#1-2
text2.n <- sapply(text2, extractNoun, USE.NAMES = F) 
text2.n

text2.n.c <- unlist(text2.n)
text2.n.c.w <- table(text2.n.c)

sort.text2 <- sort(text2.n.c.w, decreasing = T)[1:10]
sort.text2 <- sort.text2[-c(1,3,4,5,10)]


wordcloud(names(sort.text2),
          freq = sort.text2,
          main.freq=3,
          random.order = F,
          rot.per = .1,
          colors = pal1)

#1-3
text3.n <- sapply(text3, extractNoun, USE.NAMES = F) 
text3.n

text3.n.c <- unlist(text3.n)
text3.n.c.w <- table(text3.n.c)

sort.text3 <- sort(text3.n.c.w, decreasing = T)[1:10]
sort.text3 <- sort.text3[-c(1,6,8,10)]

wordcloud(names(sort.text3),
          freq = sort.text3,
          main.freq=3,
          random.order = .1,
          rot.per = .1,
          colors=pal1)

#문제2
apple <- readLines('ex_10-4.txt', encoding = "UTF-8")
apple.n <- sapply(apple,extractNoun,USE.NAMES = F )

apple.n.c <-unlist(apple.n)
apple.n.c.w <-table(apple.n.c) 

sort.apple <- sort(apple.n.c.w,decreasing = T)[1:100]
sort.apple <- sort.apple[-c(2,3,4,6,9,10,11,15,17,22,24,25,26,29,30,33,34)]
sort.apple <- sort.apple[-c(19,21,22,25,30,33,34,38,39,41,42,46,49,50)]
sort.apple <- sort.apple[-c(25,39,40,43,45,46,50,51,53,54,55,56,59,65,)]

wordcloud(names(sort.apple),
          freq = sort.apple,
          main.freq=3,
          random.order = .1,
          rot.per = .1,
          colors=pal1)
#재조정.
sort.apple <- sort(apple.n.c.w,decreasing = T)[1:20]
sort.apple <- sort.apple[-c(2,3,4,6,8,9,10,11,13,15,17)]

wordcloud(names(sort.apple),
          freq = sort.apple,
          main.freq=3,
          random.order = .1,
          rot.per = .1,
          colors=pal1)

#문제3
ob <- readLines('ex_10-5.txt', encoding = "UTF-8")
ob.n <- sapply(ob,extractNoun,USE.NAMES = F)

ob.n.c <- unlist(ob.n)
ob.n.c.w <- table(ob.n.c)

sort.ob <- sort(ob.n.c.w, decreasing=T)[1:20]
sort.ob <- sort.ob[-c(1,3,4,5,6,7,10,12,14,16,19,20)]

wordcloud(names(sort.ob),
          freq = sort.ob,
          main.freq=3,
          random.order = .1,
          rot.per = .1,
          colors=pal1)
