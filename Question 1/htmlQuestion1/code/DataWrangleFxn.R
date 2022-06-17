
DataWrangleFxn <- function(data_frame){
  
CovidDataPopDens <- data_frame %>% 
  group_by(location) %>% 
  select(date, location, population_density, total_cases) 

CovidDataPopDensAve <- CovidDataPopDens %>% 
  group_by(location) %>%
  mutate(AvePopDens = mean(population_density)) %>% 
  mutate(AveTotCases = mean(total_cases))

CovidDataPopDensAve}