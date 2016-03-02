#install.packages("BH")

library(shinyapps)
library(BH)

shinyapps::setAccountInfo(name='raveendrahadoop',
                          token='D5A87D21FB67365C9429C4D1AB71200F',
                          secret='rb8QRKsJa0IBXz37xj/o3g4Fy9AJT2sJq/GgHWeN')

shinyapps::deployApp('D:/1_BIG_Data_Science/1_MOOC/3John Hopkins/Pachamaltese Repos/Developing-Data-Products-master/project/elder-population-in-chile')