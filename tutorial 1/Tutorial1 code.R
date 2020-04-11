# 2.1 Basic Data type

# 2.3 Basic Data Structure

## create numeric atomic vector
x<- c(1,2,3)

## print it
print(x)

## create character atomic vector
y<- c('text1', 'text2', 'text3', 'text4')

## print it
print(y)

## a mixed vector
x<-c(1,2,'3')

## print it
print(x)

# 2.3 Basic Data Structure(2)

## create numeric vector
x<- 1:5
y<- 2:6

print(x+y)
print(x*y)
print(x^y)

## create named vector
x<- c(item1=10, item2=14, item3=9, item4=2)

print(x)

## set names of elements
names(x) <- c('item1','item2','item3','item4')
print(x)

## create sequence with seq
my.seq <- seq(from = -10, to = 10, by = 2)
print(my.seq)

## create sequence with defined number of elements
my.seq <- seq(from = -10, to = 10, length.out = 20)
print(my.seq)

## generate 10 random numbers from a Normal distribution
my.rnd.vec <- rnorm(n=10, mean=0, sd=1)
print(my.rnd.vec)

## create a random vector with minimum and maximum
my.rnd.vec <- runif (n=10, min = -5, max=5)
print(my.rnd.vec)

# 2.3 Basic Data Structure(3)

## get names of columns with names
names(my.df)

## get names of columns with column names
colnames(my.df)

## get column ticker from my.df
my.ticker <- my.df$ticker

## get column price from my.df
my.price <- my.df['prices']

## get second column from my.df
my.date <- my.df[ ,2]

## accessing rows 1:5, all columns
print(my.df[1:5, ])

## selecting rows 1 to 3, columns 'ticker' and 'prices'
print(my.df[1:3, c('ticker', 'prices')])

## selecting rows 1 to 3, columns 1 to 2
print(my.df[1:3, c(1,2)])

## add a sequence to my.df
my.df$my.seq <- 1:nrow(my.df)

## set new col by name
my.df['my.seq.2']<- seq(1,100, length.out = nrow(my.df))

## set new col by position
my.df[[6]]<- seq(1,100, length.out = nrow(my.df))

## rename col names
colnames(my.df)<- c('ticker', 'date', 'prices', 'my.seq', 'my.seq.2', 'my.seq.3')

## remove columns
my.df$my.seq <- NULL
my.df$my.seq.2 <- NULL
my.df$my.seq.3 <- NULL
my.df$my.v6 <- NULL


