#London Correlation Table 


LondonCorrelationFxn <- function(data_frame){
  
  LondonDataCorr <- LondonData %>% 
    select(global_radiation, precipitation, max_temp, sunshine)
  
  LondonCorr <- 
    datasummary_correlation(data_frame)
  
  LondonCorr}