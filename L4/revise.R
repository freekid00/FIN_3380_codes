setwd('/Users/zhangdi/FIN 3380/L4/')
load('crsp.beta.RData')
crsp.beta$date=as.Date(crsp.beta$date)
crsp.beta = crsp.beta %>% filter((date>='2008-01-01')&(date<'2011-01-01'))
a=crsp.beta
library(dplyr)
library(zoo)
library(tidyr)
library(RPostgres)
a=a %>% spread(permno,ret)
dt=a$date
library(timeSeries)
ret.mat=as.timeSeries(a)
library(fPortfolio)
eff=portfolioFrontier(data=ret.mat)

