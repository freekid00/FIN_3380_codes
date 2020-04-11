# template

a = data.frame(c = rnorm(100,0,1),d = rnorm(100,0,0.01))
a$d = a$c+a$d
a = as_tibble(a)
a$i = rep(c(1,2,3,4),25)
head(a)
b = a %>% group_by(i) %>%
  do(model = lm(c~d,data = .)) %>% ungroup()
library(purrr)
b = b %>% mutate(model = map(model,tidy))
b = b %>% unnest(model)
b
