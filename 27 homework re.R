#문1
state.x77
head(state.x77)

#문맹률이 독립변수.

#y=wx+b
#y와 x는 주어지는 값,w와 b는 알아내야 하는 값.(매개변수 혹은 계수)

state.x77_df <-data.frame(state.x77)

plot( Murder~Illiteracy , data = state.x77_df )
abline( state.x77_model )

coef( state.x77_model ) #바이오스, 즉 매개변수.
summary( state.x77_model )