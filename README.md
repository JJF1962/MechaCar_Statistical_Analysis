# Overview & Objective

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

## Deliverable 1: Linear Regression to Predict MPG
To execurte and deliver the challenge it was imported the file MerchaCar_mpg.csv and read into a Dataframe, and Rscrip was writteng for a linera regression executed on all six variables, and to create the summary (statistical) of the linear regression model with the intended p-values as shown in figure below

Resulting model: mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0); see image with console result below:

![this is an image](https://github.com/JJF1962/MechaCar_Statistical_Analysis/blob/main/Resources/Resulting%20model%20Deliverable%201.PNG)

Statistical Summary:
Based on the previous output we can start to conclude the following:
* The length and ground clearance  of the vehicle are statistically likely to provide non-random amounts of variance specifically  to the model. However, the length and ground clearance have a significant of the vehicle impact on miles per gallon on the MechaCar type. Oppositely, the spoiler angle, weight, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.
* The p-Value(, p-Value: 5.35e-11), it is smaller than the assumed significance level of 0.05%. indicating that is sufficient evidence to reject the null hypothesis, showing that the slope of this linear model is not equal to zero.
* The linear model has an r-squared value of 0.7149, as shown in the previous result, allowing to indicate that approximately 71% of the mpg will be determined by this model, additionally the  multiple regression model allow to forecast mpg of MechaCar types effectively.

![this is an image]()
