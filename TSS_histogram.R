library(tidyverse)

setwd("C:/Users/guil098/OneDrive - PNNL/Data Generation and files/RC2/TSS")

list.files()
spatial_data = read.csv("20220425_Data_Processed_TSS_SBR_RC2_SPS_1-64_VGC.csv")



spatial_data %>% #pipes can pull up the data and then, if needed, allow it to be altered without changing the file
  #filter(TSS_mg_per_L<= 20) %>% #example: filter the outlier data point 
  ggplot(aes(x = TSS_mg_per_L)) + 
  geom_histogram(fill = NA, color = "black")+ #making changes to the histogram visuals
  #scale_x_log10()+ #change axis to a log10 scale
  geom_vline(xintercept = 1, linetype = "dashed") #adding a line for EPA detection limit

#another way to plot the histogram with xlim to specify the intervals
#spatial_data %>% 
#  ggplot(aes(x = TSS_mg_per_L)) + 
# geom_histogram(fill = NA, color = "black")+ 
#  scale_x_log10()+
#  xlim(0, 15)+
#  geom_vline(xintercept = 1)
  



