library(tidyverse)

Stockreturns <- c(-8.36,   1.63,  -2.27, -2.93,  -2.70, 
                  -2.93, -9.14, -2.64, 6.82,   -2.35, 
                  -3.58,   6.13,   7.00, -15.25, -8.66,
                  -1.03, -9.16,  -1.25, -1.22,  -10.27,
                  -5.11, -0.80,  -1.44,  1.28,  -0.65,
                  4.34,   12.22, -7.21, -0.09, 7.34, 
                  5.04,  -7.24,  -2.14, -1.01,  -1.41, 
                  12.03, -2.53,  4.33,  1.35)
Stockreturns

#1.
stockMean <- mean(Stockreturns)
stockMean

#2.
stockSD <- sd(Stockreturns)
stockSD

#3.
pnorm(q = -1.5, mean = stockMean, sd = stockSD)

#4.
qnorm(p = 0.7, mean = stockMean, sd = stockSD)

#5.
#Q1:
#All between

min(Stockreturns)

#and

qnorm(p = 0.25, mean = stockMean, sd = stockSD)

#6.
boxplot(Stockreturns)
#The return data is not normal as the box plot is not symmetric.
qqnorm(Stockreturns)
qqline(Stockreturns)

#7.
# H(0) :  Stock return mean is greater than or equal to 0.95, the average return of the S&P 500
# H(A) :  The mean is less than 0.95

#8.
StockT <- t.test(Stockreturns,mu=0.95, alternative = "less", conf.level = .95)
StockT

#9.
#As the p-value of the t-test,
StockT$p.value
#is less than 0.05, we reject the null hypothesis and conclude there is significant evidence to say the broker performs worse than average. 
