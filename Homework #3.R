Homework #2 (technically 3)

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
#I am interested in comparing individuals with a degree in 'Business' and individuals with a degree in 'Liberal Arts & Humanities'.

summary(acs2017_ny$DEGFIELD=='Business')
Mode   FALSE    TRUE 
logical  186783    9802 
summary(acs2017_ny$DEGFIELD=='Liberal Arts and Humanities')
Mode   FALSE    TRUE 
logical  195806     779 

This tells us that there are 9802 people with a degree in Business and 779 people with a degree in Liberal Arts and Humanities. 

I am interested in comparing gender(SEX), total household income(HHINCOME), usual hours worked per week(UHRSWORK), and birthplace (BPL). 

Gender:
summary(acs2017_ny$SEX[acs2017_ny$DEGFIELD =='Business'])
Male Female 
5349   4453 
summary(acs2017_ny$SEX[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Male Female 
316    463

Total Household Income:
summary(acs2017_ny$HHINCOME[acs2017_ny$DEGFIELD =='Business'])
Min.   1st Qu.  Median    Mean   3rd Qu.    Max.      NAs 
-5900   75000   129400   174386  208000   1666000      95 
summary(acs2017_ny$HHINCOME[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Min.  1st Qu.  Median    Mean    3rd Qu.    Max.    NAs 
0     58100    106100   142595   172500   1480100   16 

Usual Hours Worked Per Week:
summary(acs2017_ny$UHRSWORK[acs2017_ny$DEGFIELD =='Business'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   25.00   40.00   34.31   45.00   99.00 
summary(acs2017_ny$UHRSWORK[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00   35.00   26.88   40.00   85.00 

Place of Birth: 
summary(acs2017_ny$BPL[acs2017_ny$DEGFIELD =='Business'])

summary(acs2017_ny$BPL[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
  
  
  
  
First, we can do a test run and examine differences in average rent between the majors. 
mean(In_NYC$RENT[In_NYC$DEGFIELD =='Fine Arts'])
[1] 1320.581
mean(In_NYC$RENT[In_NYC$DEGFIELD =='Business'])
[1] 1017.371


#The following code will give us the number of people who majored in the respective fields in NYC, ages 18 to 65. 
summary(In_NYC$DEGFIELD)


