## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include=TRUE-------------------------------------------------------------
library(markovMSM)

data("prothr")

set.seed(1234)

res8 <- AUC.test(data = prothr, from=2, to=3, type='global', replicas=2, 
                 limit=0.90, quantiles=c(.05, .10, .20, .30, 0.40))

round(res8$globalTest,5)

round(res8$localTests,4)



## ----include=TRUE-------------------------------------------------------------
set.seed(1234)

times <- c(73.5, 117, 223, 392, 681)

res9 <- LR.test(data=prothr, times=times, from = 2, to = 3, replicas = 10)

res9$localTestLR

res9$globalTestLR

set.seed(1234)

res10 <- LR.test(data=prothr, times=times, from = 2, to = 1, replicas = 10)

res10$localTestLR

res10$globalTestLR



