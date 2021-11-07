library(ggplot2)
## Clustering Assignment 
crime <- read.csv("/Users/prags/Downloads/crime.csv", na.strings = c(""))
set.seed(3252)

## Question 1
cr <- cbind (Violent=crime$Violent, Burglary=crime$Burglary, Roberry=crime$Robbery, MotorTheft=crime$MotorTheft)
clus<- princomp(cr, scores = T, cor = T)
summary(clus)

## Question 2
plot(clus)

## Question 3 
results<- kmeans(cr, 3)
results
results$cluster
