setwd("H:/R")
anovaexample <- read.csv("H:/R/anovaexample.txt")
View(anovaexample)# dependent variable response to various drug treatments 
anovaexample$iv
attach(anovaexample)
iv
plot(iv, dv) # plots treatment group and measured response
aov(dv~iv) # Performs the ANOVA
model <-aov(dv~iv)
model
summary(model) # view ANOVA table
plot(model)
TukeyHSD(model) # More robust p test
summary(model)
20.13 / (20.13 + 23.6) # R^2 calculation i.e. effect size
summary.lm(model)
par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))
detach(anovaexample)
regression_example <- read.delim("H:/R/regression_example.txt")
View(regression_example) # linear regression example
attach(regression_example)
plot(x,y)
lm(y~x)
fit <- lm(y~x)
fit <- lm(y~x, data=regression_example)
fit
summary(fit)
abline(lm(y~x), col='red')
summary(fit)
plot(fit)
detach(regression_example)
log_data <- read.delim("H:/R/log_data.txt")
View(log_data)
attach(log_data)
plot(y~x)
fit1 <-lm(y~x)
summary(fit1)
abline(fit1)
plot(fit1)
plot(log(y)~x)
fit2 <-lm(log(y)~x)
fit2
summary(fit2)
abline(fit2)
plot(fit2)

