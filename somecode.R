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


