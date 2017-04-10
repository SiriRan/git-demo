# Poldrack workshop - Repro course

# Website: https://github.com/poldrack/reproducible-workflows
# In terminal: 
    # git init # open new github hidden file
    # git status # currently empty
    # git log # check what you've done

#rm(list = ls())
#setwd('/Users/Siri/Desktop/Repro17/git-demo/')


# R code
df=read.table('http://data.bris.ac.uk/datasets/swyt56qr4vaj17op9cw3sag7d/LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)

plot(df$age,df$conspiracist_avg)

max_age=120
min_age=18

#stopifnot(max(df$age)<max_age)
#stopifnot(min(df$age)>min_age)

#max(df$age) #32757
#min(df$age) # 5

df=subset(df,age>min_age&age<max_age)

stopifnot(max(df$age)<max_age)
stopifnot(min(df$age)>min_age)

max(df$age) #84
min(df$age) # 19

plot(df$age,df$conspiracist_avg)

lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)



