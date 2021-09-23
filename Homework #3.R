Homework #3

1. What are the names of the people in your group?
  
Lab #2 Results:
load("~/Desktop/School/Fall 2021/Statistics and Introduction to Econometrics/RStudio Stuff/Ecob2000_lecture1/acs2017_ny_data..RData")
load("acs2017_ny_data.RData")
attach(acs2017_ny)
View(acs2017_ny)

#We want to focus on the people who live within NYC and are between the ages of 18 and 65, so we can create a subset. 
In_NYC <- subset(acs2017_ny, (acs2017_ny$in_NYC == 1)&(acs2017_ny$AGE > 18) & (acs2017_ny$AGE < 66))

View(In_NYC)
print(NN_obs <- length(AGE))
45803

In this subset, there are 45,803 people who live in NYC and are between the ages of 18 and 65. 

#We want to compare people with different college majors and observe how the two groups differ. 
#I am interested in comparing individuals with a degree in 'Business' and individuals with a degree in 'Fine Arts'. 

First, we can do a test run and examine differences in average rent between the majors. 
mean(In_NYC$RENT[In_NYC$DEGFIELD =='Fine Arts'])
[1] 1320.581
mean(In_NYC$RENT[In_NYC$DEGFIELD =='Business'])
[1] 1017.371



