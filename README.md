# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Linear Regression Results

![Linear Regression Results](/images/MechaCar_Part1.png/)

According to the results of the linear regression, vehicle length and ground clearance provide a non-random amount of variance to the mpg values. With the R-Squared value being .7149, it can be said that this linear model can predict the mpg of MechaCar prototypes effectively. The slope of this linear model is not considered to be zero. 

## Summary Statistics on Suspension Coils

Total Manufacturing Lots Results

![Total Manufacturing Lots Results](/images/MechaCar_Part2_total_summary.png/)

Individual Manufacturing Lots Results

![Individual Manufacturing Lots Results](/images/MechaCar_Part2_lot_summary.png/)

According to the above images, the current manufacturing data is meeting the design specification for all manufacturing lots in total. The total variance across all lots is 62.29 PSI. Lots 1 and 2 meet the design specifications, with variances of .97 and 7.46 PSI, respectively. Lot 3 has a variance of 170.286, indicating that it does not meet the design specifications. 

## T-Tests on Suspension Coils

Population T-Test

![Population T-Test](/images/MechaCar_Part3_population.png/)

Lot 1 T-Test

![Lot 1 T-Test](/images/MechaCar_Part3_lot1.png/)

Lot 2 T-Test

![Lot 2 T-Test](/images/MechaCar_Part3_lot2.png/)

Lot 3 T-Test

![Lot 3 T-Test](/images/MechaCar_Part3_lot3.png/)

The population T-Test resulted in a P-Value of .069, which is above the acceptable significant level of .05. This t-test has failed to reject the null hypothesis. The total manufacturing lots are statistically similar to the population mean that it was compared to. With similar results, the T-Tests for  individual lots 2 and 3 resulted with failing to reject the null hypthossis, as the P-Value of lots 2 and 3 were above the significant level of .05. It can be concluded that these lots are statistically similar to the population mean. On the other hand, the P-Value of Lot 1 is less than .05, indicating that the PSI for Lot 1 is statistically different from the population mean of 1,500 pounds per square inch.

