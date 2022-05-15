# Project Overview & Objective
The main objective of this project is to learn an apply R programming language,tool that allow to execute statistical analysis on  datasets, in this specific case, the project is focalized in the automotive industry called "MechaCar" as described in the following paragraph.
Jeremy is ecstatic that he has been given the opportunity to lead the team dand  He's confident that his 10 years experience  with the manufacturing and research, has provided him with the  expertise needed for this data analytic analysis. However, he is not  confident about his statistics skills and programming ability. Additionally Jeremey as never beenscare to go away for a challenge from a challenge. He knows that if he fully capabale and ready to commit to learn stats and R programming, and Learn R seems to be a good start point to prepare for his new role.
It was applied in this module and challenge our understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. 
The analysis  include visualizations, statistical tests, and interpretation of the results. to execute it, all the statistical analysis and visualizations was written in the R programming language. It was extracted, transformed, and loaded (ETL) data; visualized  and analyzed the data using R. Additionally, it was learned a variety of statistical tests, with real-world application in data science, and their implementation in R. The goal was to apply all the mentioned these statistical concepts beyond this module, to any dataset, using any programming language—including Python.

The module allow to learn and apply the following:
* Load, clean up, and reshape datasets using tidyverse in R.
* Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
* Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
* Plot and identify distribution characteristics of a given dataset.
* Formulate null and alternative hypothesis tests for a given data problem.
* Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
* Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
* Implement and evaluate a chi-squared test for a given dataset.
* Identify key characteristics of A/B and A/A testing.
* Determine the most appropriate statistical test for a given hypothesis and dataset.

Especifically in this challenge, it was performed the following:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll * * * write a summary interpretation of the findings.

# Resources, Languajes  & Tools
* RStudio
* R version 4.2.0 (2022-04-22 ucrt)
* Python, it is posible to use any programming languaje
* Two CSV Files and dataset: MerchaCar_mpg & Suspension_Coil

# Challenge Deliverables
* Deliverable 1: Linear Regression to Predict MPG
* Deliverable 2: Summary Statistics on Suspension Coils
* Deliverable 3: T-Test on Suspension Coils
* Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Deliverable 1: Multiple Linear Regression Model to Predict MPG
To execurte and deliver the challenge it was imported the file MerchaCar_mpg.csv and read into a Dataframe, and Rscrip was writteng for a linera regression executed on all five different variables, and to create the summary (statistical) of the linear regression model, allowing to identify which variables can be used for prediction and which ones not.with the intended p-values as shown in figure below

![this is an image](https://github.com/JJF1962/MechaCar_Statistical_Analysis/blob/main/Resources/linear%20regression%20model%20delivery1%20(0)%20%20.PNG)

It was a must to identify if the slope of this model can be considered zero, therefore it was executed the following Multiple Linear Regression summary was executed

![this is an image](https://user-images.githubusercontent.com/97784444/168455430-6d959243-acff-4480-8870-70437ea4ecf0.png)


Statistical Summary:
Based on the previous output we can start to conclude the following:
* The only two variables accountables after reviewed the p-value are Vehicule _lenghty and ground_clearance for the non randon variance. The p-value is 0.05 and the null Hypotheis assumes a value of cofficient "zero", and alternative one no "zero" allow to conclude there are no "zero" coefficients. 
* The model no predict effectively  the mpg of the prototypes MechaCars, because the adjusted R-squared of 0.6825, equivalent to (68%) of the variance of the metrics already discussed, meaning that 32% is caused by not determined factors.
* It will be good to complete this excersize remove variables such as Vehicle weight, spoiler angle and All Wheel Drive to evaluate if the predictability of th R-quared value decrease, increase or the variation is minimum.

## Deliverable 2: Suspension Coils Statisticals Summary  
the results from multiple production lots are contained in The Suspension_Coil.csv dataset,  and the Suspension Coil’s PSI continuous variable across all manufacturing lots, allowing to calculate PSI metrics for each lot: mean, median, variance, and standard deviation, as shown in the figure below

To obtain the following results, It was executed a techcical analysis, following the steps detailed as follows:
Technical Analysis
* Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
* In the MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
* Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension     coil’s PSI column.

![this is an image](https://github.com/JJF1962/MechaCar_Statistical_Analysis/blob/main/Resources/Delivery%202%20point%201%20Total%20Summary%20Data%20Frame.PNG)

After that it was wrote an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column as shown in the figure below:

![this is an image](https://github.com/JJF1962/MechaCar_Statistical_Analysis/blob/main/Resources/Delivery%202%20point%202%20Lot%20Summary.PNG)

The data meets the specifications because the  lot 1 and Lot 2  low values make the average of the Lots 1, 2 and 3 to the accepted variance

## Deliverable 3: Suspension Coils - T-Test
The goal was  to perform one-sample t-tests to determine if all manufacturing lots combined and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![this is an image](https://github.com/JJF1962/MechaCar_Statistical_Analysis/blob/main/Resources/Delivery%203%20Each%20individual%20lot.PNG)

However, The p-value result of 0.04168 in the Lot 3 clearly indicates that there is an statistical differential from the population mean of 1500, therefore this lot not comply with the quality standards and most the product must be improved or other action posible as a material rejection needs to be considered.

## DEliverable 4: Comparing the MechaCar to the Competition
