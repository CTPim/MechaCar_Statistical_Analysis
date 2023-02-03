#Deliverable 1
library(dplyr) #import dplyr
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import MechaCar CSV
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MechaCar_table)) #generate summary statistics
#Deliverable 2
Suspension_Coil_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import suspension coil CSV
total_summary <- Suspension_Coil_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table
lot_summary <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
#Deliverable 3
population_sample <- Suspension_Coil_Table %>% sample_n(50) #get a population mean
t.test(population_sample$PSI,mu=mean(Suspension_Coil_Table$PSI)) #compare sample versus population mean
Lot1_Sample <- Suspension_Coil_Table %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25) #create a sample table of 25 data points with Lot 1
t.test(Lot1_Sample$PSI,mu=mean(Suspension_Coil_Table$PSI)) #compare Lot1 sample versus population mean
Lot2_Sample <- Suspension_Coil_Table %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25) #create a sample table of 25 data points with Lot 1
t.test(Lot2_Sample$PSI,mu=mean(Suspension_Coil_Table$PSI)) #compare Lot2 sample versus population mean
Lot3_Sample <- Suspension_Coil_Table %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25) #create a sample table of 25 data points with Lot 1
t.test(Lot3_Sample$PSI,mu=mean(Suspension_Coil_Table$PSI)) #compare Lot3 sample versus population mean

