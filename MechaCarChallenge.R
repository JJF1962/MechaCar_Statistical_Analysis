### Challenge 15 - Delivery 1 Linear Regression to Predict MPG

# Question 3 Use the library() function to load the dplyr package.
library(dplyr)


# Question 4 Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Question 5 Perform linear regression using the lm() function. In the lm() 
# function, pass in all six variables (i.e., columns), and add the dataframe
# you created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# Question 6 Using the summary() function, determine the p-value and the
# r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


# Question 7 Save your MechaCarChallenge.RScript file to your GitHub repository.

### CHALLENGE 15: DELIVERABLE 2 Create Visualizations for the Trip Analysis 

# Question 1 Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

# Question 2 In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file='./Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# Question 3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                               Median_PSI=median(PSI),
                                               Var_PSI=var(PSI),
                                               Std_Dev_PSI=sd(PSI),
                                               Num_Coil=n(), .groups = 'keep') 
# Question 4 Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                              Median_PSI=median(PSI),
                                                                              Var_PSI=var(PSI),
                                                                              Std_Dev_PSI=sd(PSI),
                                                                              Num_Coil=n(), .groups = 'keep')  
# Question 5 Save your MechaCarChallenge.RScript file to your GitHub repository.


### Delivery 3 T-Tests on Suspension Coils

# Question 1 n your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if 
# the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds 
#per square inch.
t.test(Suspension_Coil$PSI,mu=1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() 
# argument to determine if the PSI for each manufacturing lot is statistically different from the population mean 
# of 1,500 pounds per square inch.

lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
