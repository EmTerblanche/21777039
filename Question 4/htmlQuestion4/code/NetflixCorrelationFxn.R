#Seasons and Score Correlation Table

NetflixCorrelationFxn <- function(data_frame){
  
  NetflixDataTypeCorr <- NetflixData %>% 
    select(imdb_score, seasons)
  
  NetflixCorr <- 
    datasummary_correlation(data_frame)
  
  NetflixCorr}