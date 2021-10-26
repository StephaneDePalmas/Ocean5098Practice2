rm(list = ls())

library(tidyverse)

name <- c("subject_1", "subject_2","subject_3","subject_4","subject_5")
before.diet <- c(104, 95, 87, 77, 112)
after.diet <- c(96, 91, 81, 75, 118)
bubbletea <- data.frame(name, before.diet, after.diet)
str(bubbletea)

bubtea<-bubbletea %>% pivot_longer (cols = before.diet:after.diet, names_to = "weight", values_to = "time")
bubtea$weight<-as.factor(bubtea$weight)
str(bubtea)

A<-unique(c(bubtea$name))
A

B<-c((bubtea$time[1]-bubtea$time[2])/100,
     (bubtea$time[3]-bubtea$time[4])/100,
     (bubtea$time[5]-bubtea$time[6])/100,
     (bubtea$time[7]-bubtea$time[8])/100,
     (bubtea$time[9]-bubtea$time[10])/100)
B

C<- data.frame (subject=A, weight_loss=B)
C

bubble_diet<-list(A = bubtea,weigth_loss = list(A, B, C))
str(bubble_diet)