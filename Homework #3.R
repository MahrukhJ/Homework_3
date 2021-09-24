Homework #2 (technically 3)

1. What are the names of the people in your group?
Adelia Fida, Hassan Fayyaz, Hugo Pinto, Tanmay Thomas
  
Lab #2 Results:

First, we load the data and attach it!

load("~/Desktop/School/Fall 2021/Statistics and Introduction to Econometrics/RStudio Stuff/Ecob2000_lecture1/acs2017_ny_data..RData")
load("acs2017_ny_data.RData")
attach(acs2017_ny)
View(acs2017_ny)

#We want to compare people with different college majors and observe how the two groups differ. 
#I am interested in comparing individuals with a degree in 'Business' and individuals with a degree in 'Liberal Arts & Humanities'.

summary(acs2017_ny$DEGFIELD=='Business')
Mode   FALSE    TRUE 
logical  186783    9802 
summary(acs2017_ny$DEGFIELD=='Liberal Arts and Humanities')
Mode   FALSE    TRUE 
logical  195806     779 

                This tells us that there are 9802 people with a degree in Business and 779 people with a degree in Liberal Arts and Humanities. 

I think it would be interesting to compare "gender(SEX), total household income(HHINCOME), usual hours worked per week(UHRSWORK), and birthplace (BPL)" between the 2 degrees.

#Gender:
summary(acs2017_ny$SEX[acs2017_ny$DEGFIELD =='Business'])
Male Female 
5349   4453 
summary(acs2017_ny$SEX[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Male Female 
316    463

                                                            Business Degree:                  45.43% women
                                                            Liberla Arts & Humanities Degree: 59.44% women

#Total Household Income:
summary(acs2017_ny$HHINCOME[acs2017_ny$DEGFIELD =='Business'])
Min.   1st Qu.  Median    Mean   3rd Qu.    Max.      NAs 
-5900   75000   129400   174386  208000   1666000      95 
summary(acs2017_ny$HHINCOME[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Min.  1st Qu.  Median    Mean    3rd Qu.    Max.    NAs 
0     58100    106100   142595   172500   1480100   16 

                              Interestingly, the average household income difference between business and liberal arts/humanities degree is ~$32,000.

#Usual Hours Worked Per Week:
summary(acs2017_ny$UHRSWORK[acs2017_ny$DEGFIELD =='Business'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   25.00   40.00   34.31   45.00   99.00 
summary(acs2017_ny$UHRSWORK[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00   35.00   26.88   40.00   85.00 

                         A person with a business degree will work an average of 34.31 hours in a week and a person with a liberal arts degree will work an average of 26.88.

#Place of Birth: 
summary(acs2017_ny$BPL[acs2017_ny$DEGFIELD =='Business'])
New York                 West Indies                     China 
5838                         387                         357 
India               SOUTH AMERICA                  New Jersey 
285                         242                         222 
Other USSR/Russia        Pennsylvania                 Philippines 
187                         168                         124 
AFRICA                  California               Massachusetts 
120                          97                          97 
Connecticut                Ohio                       Korea 
90                          75                          75 
Illinois             Central America                  Florida 
57                          57                          56 
Texas                      Poland                    Maryland 
52                          47                          43 
Germany                   Canada                    Michigan 
42                          38                          37 
North Carolina          Virginia                      France 
34                          33                          33 
Italy                 Puerto Rico           United Kingdom, ns 
33                          32                          32 
Mexico                    Japan                     Georgia 
31                          29                          25 
Missouri            Israel/Palestine                  Indiana 
25                          24                          23 
Wisconsin                Vietnam            Australia and New Zealand 
21                          19                          19 
District of Columbia     Albania                      Greece 
18                          18                          18 
Yugoslavia                 Turkey                   Minnesota 
18                          18                          17 
Colorado                   Vermont                     Romania 
16                          16                          16 
Nepal                  Washington                     England 
16                          15                          15 
Arizona                    Spain                  Rhode Island 
14                          14                          13 
South Carolina          Tennessee                  Asia, nec/ns 
13                          13                          13 
Delaware                 Louisiana                   Ireland 
12                          12                          12 
New Hampshire            Alabama                    Netherlands 
11                          10                          10 
Malaysia                 Nebraska                   Switzerland 
10                           9                           9 
Czechoslovakia           Kentucky                    Austria 
9                           8                           8 
Bulgaria                Indonesia                     Maine 
8                           8                           7 
Cuba                    Portugal                       Iran 
7                           7                           7 
Lebanon                  Kansas                    Mississippi 
7                           6                           6 
Oregon                     Utah                     Belgium 
6                           6                           6 
Hungary                  Alaska                      Hawaii 
6                           5                           5 
Iowa                     Montana                  New Mexico 
5                           5                           5 
Denmark                   Latvia                   Lithuania 
5                           5                           5 
Thailand                  Arkansas                South Dakota 
5                           4                           4 
West Virginia             Guam                      Sweden 
4                           4                           4 
Scotland                 Singapore       Yemen Arab Republic (North) 
4                           4                           4 
(Other) 
31 

summary(acs2017_ny$BPL[acs2017_ny$DEGFIELD =='Liberal Arts and Humanities'])
New York                 India                   West Indies 
432                        38                        26 
New Jersey            Pennsylvania              Massachusetts 
14                        14                        13 
SOUTH AMERICA        Other USSR/Russia          Connecticut 
13                        13                        10 
Illinois                China                     Japan 
10                        10                        10 
Philippines             AFRICA                  Maryland 
8                         8                         7 
California             Florida               North Carolina 
6                         6                         6 
Puerto Rico            Canada                     Korea 
6                         6                         6 
Colorado               Michigan                  Virginia 
5                         5                         5 
Poland                 Georgia                   Indiana 
5                         4                         4 
Minnesota                Ohio                     Texas 
4                         4                         4 
France                   Italy                   Germany 
4                         4                         4 
Montana                 Oregon              Rhode Island 
3                         3                         3 
Wisconsin               Mexico           Central America 
3                         3                         3 
Cuba                   England                Europe, ns 
3                         3                         3 
Israel/Palestine       Alabama           District of Columbia 
3                         2                         2 
Kansas                 Missouri            United Kingdom, ns 
2                         2                         2 
Ireland                 Albania                    Iran 
2                         2                         2 
Arizona                  Iowa                  Kentucky 
1                         1                         1 
Maine                New Hampshire            South Carolina 
1                         1                         1 
Tennessee                Utah                    Greece 
1                         1                         1 
Austria            Czechoslovakia                Romania 
1                         1                         1 
Yugoslavia             Singapore                 Vietnam 
1                         1                         1 
Afghanistan            Lebanon              Asia, nec/ns 
1                         1                         1 
Australia & New Zealand  Alaska                  Arkansas 
1                         0                         0 
Delaware               Hawaii                     Idaho 
0                         0                         0 
Louisiana             Mississippi                Nebraska 
0                         0                         0 
Nevada                New Mexico              North Dakota 
0                         0                         0 
Oklahoma              South Dakota               Vermont 
0                         0                         0 
Washington            West Virginia             Wyoming 
0                         0                         0 
Native American      United States, ns       American Samoa 
0                         0                         0 
Guam               U.S. Virgin Islands      Other US Possessions 
0                         0                         0 
St. Pierre & Miquelon Atlantic Islands         North America, ns 
0                         0                         0 
Americas, n.s.        Denmark                   Finland 
0                         0                         0 
(Other) 
0 
  
               *Standard error is a measure of the variability of a set of means and is caluclated by dividing the standard deviation by the square root of the sample size*

Standard error for total household income (acs2017_ny data):
x <- c(174386,142595)
std_mean <- function(x) sd(x)/sqrt(length(x))
> std_mean(x)
[1] 15895.5

Standard error for hours worked per week (acs2017_ny data):
s <- c(34.31,26.88)
std_mean(s)
[1] 3.715


                "Out of this dataset, the place with the highest number of births (sorry for weird phrasing) for both business degrees and liberal arts degree holders is New York."
Therefore, it would be interesting to create a subgroup of people who live in NYC and are between the ages of 18 and 25 in order to exclude those who are retired. 
  
#We want to focus on the people who live within NYC and are between the ages of 18 and 65, so we can create a subset. 
In_NYC <- subset(acs2017_ny, (acs2017_ny$in_NYC == 1)&(acs2017_ny$AGE > 18) & (acs2017_ny$AGE < 66))

View(In_NYC)
print(NN_obs <- length(AGE))
45803

In this subset, there are 45,803 people who live in NYC and are between the ages of 18 and 65. 

 
summary(In_NYC$DEGFIELD=='Business')
Mode      FALSE    TRUE 
logical   42307    3496 
summary(In_NYC$DEGFIELD=='Liberal Arts and Humanities')
Mode      FALSE    TRUE 
logical   45496     307 

There are 3,496 people in NYC between the ages of 18 and 65 who have a business degree.
There are 307 people in NYC between the ages of 18 and 65 who have a liberal arts and humanities degree.

GENDER:
  
> summary(In_NYC$SEX[In_NYC$DEGFIELD =='Business'])
Male Female 
1722   1774 
> summary(In_NYC$SEX[In_NYC$DEGFIELD =='Liberal Arts and Humanities'])
Male Female 
122    185 

TOTAL HOUSEHOLD INCOME:
  
> summary(In_NYC$HHINCOME[In_NYC$DEGFIELD =='Business'])
Min.   1st Qu.  Median   Mean  3rd Qu.    Max.    NAs 
-5900   73000  127400   166608   200000 1288300     11 
> summary(In_NYC$HHINCOME[In_NYC$DEGFIELD =='Liberal Arts and Humanities'])
Min. 1st Qu.  Median    Mean   3rd Qu.    Max.    NAs 
0     58000    113000  139533  168000   1276200    2 


USUAL HOURS WORKED PER WEEK:

> summary(In_NYC$UHRSWORK[In_NYC$DEGFIELD =='Business'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   35.00   40.00   38.24   50.00   99.00 
> summary(In_NYC$UHRSWORK[In_NYC$DEGFIELD =='Liberal Arts and Humanities'])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   20.00   40.00   32.53   40.00   85.00

Interestingly, the difference between the means is less than before.

                                                            'We can also calculate the standard error for NYC Data!'

Standard error for total household income In_NYC data:
t <- c(166608,139533)
> std_mean(t)
[1] 13537.5

Standard error for hours worked per week In_NYC data:
h <- c(38.24,32.53)
> std_mean(h)
[1] 2.855


#What other outcomes could explain the difference in outcome?

The difference in outcome for gender is not too significant since the proportion of male and female is divided roughly equally for both business and liberal art degrees. 

The difference in outcome for total household income can be explained through family size, rent, or even area of residence!
  
The difference in outcome for usual hours worked per week can be explained through job prospect, area of residence, type of work, job responsibility. 


