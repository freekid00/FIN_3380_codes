sample(1:6, 1) 
  # generate the vector of probabilities 
  probability <- rep(1/6, 6) 

  # generate the vector of cumulative probabilities 
  cum_probability <- cumsum(probability)
  
  
  # compute the sample mean of 10000 dice rolls
  mean(sample(1:6, 
              10000, 
              replace = T))
  

  # define functions
  f <- function(x) 3 / x^4
  g <- function(x) x * f(x)
  h <- function(x) x^2 * f(x)
  
  # compute area under the density curve
  area <- integrate(f, 
                    lower = 1, 
                    upper = Inf)$value
  area
  
  # compute E(X)
  EX <- integrate(g,
                  lower = 1,
                  upper = Inf)$value
  EX
  
  # compute Var(X)
  VarX <- integrate(h,
                    lower = 1,
                    upper = Inf)$value - EX^2 
  VarX 
  
  
  # draw a plot of the N(0,1) PDF
  curve(dnorm(x),
        xlim = c(-3.5, 3.5),
        ylab = "Density", 
        main = "Standard Normal Density Function") 
  
  # compute denstiy at x=-1.96, x=0 and x=1.96
  dnorm(x = c(-1.96, 0, 1.96))
  
  
  # plot the standard normal CDF
  curve(pnorm(x), 
        xlim = c(-3.5, 3.5), 
        ylab = "Density", 
        main = "Standard Normal Cumulative Distribution Function")
  
  # compute the probability using pnorm()
  pnorm(1.337)
  
  pnorm(4, mean = 5, sd = 5) - pnorm(3, mean = 5, sd = 5) 
  
  ## t distribution
  # plot the standard normal density
  curve(dnorm(x), 
        xlim = c(-4, 4), 
        xlab = "x", 
        lty = 2, 
        ylab = "Density", 
        main = "Densities of t Distributions")
  
  # plot the t density for M=2
  curve(dt(x, df = 2), 
        xlim = c(-4, 4), 
        col = 2, 
        add = T)
  
  # plot the t density for M=4
  curve(dt(x, df = 4), 
        xlim = c(-4, 4), 
        col = 3, 
        add = T)
  
  # plot the t density for M=25
  curve(dt(x, df = 25), 
        xlim = c(-4, 4), 
        col = 4, 
        add = T)
  
  # add a legend
  legend("topright", 
         c("N(0, 1)", "M=2", "M=4", "M=25"), 
         col = 1:4, 
         lty = c(2, 1, 1, 1))
  
  
  
  