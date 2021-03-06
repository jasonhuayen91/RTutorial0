#### R Code for ProbDistributions ####
### Aug 02, 2016 ####

##### Binomial ########

# assume X ~ Bin(20,1/6) 
help(dbinom)
# P(X=3)
dbinom(x=3,size=20,prob=1/6)
# P(X=0) & P(X=1) & ... & P(X=3)
dbinom(x=0:3,size=20,prob=1/6)
P(X < = 3)
sum(dbinom(x=0:3,size=20,prob=1/6))
pbinom(q=3,size=20,prob=1/6,lower.tail = T)
# rbinom command : to take a random sample from a Binomial Distribution
# qbinom command: to find quantiles for a Binomial Distribution


##### Poisson ########

# assume X~Poisson(lambda = 7)
help(dpois)
dpois(x=4,lambda=7)
dpois(x=0:3,lambda=7)
ppois(q=4,lambda = 7,lower.tail = T)
ppois(q=12,lambda = 7,lower.tail = F)
# rpois command : to take a random sample from a Binomial Distribution
# qpois command: to find quantiles for a Binomial Distribution


##### Normal ########

# assume X ~ N(mu = 75, sigma^2 = 25)
help(pnorm)
# P(X <= 70)
pnorm(q=70,mean = 75, sd = 5, lower.tail = T)
# default value for lower.tail is 'T' so don't need to specify it,
pnorm(q=70,mean = 75, sd = 5)
# P(X >= 85)
pnorm(q=85,mean = 75, sd = 5,lower.tail = F)
# standard normal
# P(Z >= 1)
pnorm(q = 1, mean = 0, sd = 1, lower.tail = F)
# find Q1
qnorm(p = 0.25,mean = 75, sd = 5, lower.tail = T)
# create a plot of the probability density function of X
x <- seq(from = 55, to = 95, by = 0.25);
dens <- dnorm(x, mean = 75, sd = 5)
plot(x,dens)
plot(x,dens,type = 'l')
plot(x,dens,type = 'l',main = "X~N(75,25)",xlab = 'x', ylab = "Probability Density", las = 1)
abline(v = 75)
# draw a random sample
rand <- rnorm(n=40,mean=75,sd=5);
hist(rand)

##### t - Distribution ########
# assume t ~ t_(df = 25)(mu = 0, sigma^2 = 1)
help(pt)
# t-stat = 2.3, df = 25
# one - sided pvalue
# P(t > 2.3)
pt(q = 2.3, df = 25, lower.tail = F)
# two-sided pvalue
pt(q = 2.3, df = 25, lower.tail = F) + pt(q=-2.3,df = 25, lower.tail = T)
pt(q = 2.3, df = 25, lower.tail = F)*2
# find t - value for 95% confidence
# value of t with 2.5% in each tail
qt(p=0.025, df = 25, lower.tail = T)
help(pf)
help(exp)









