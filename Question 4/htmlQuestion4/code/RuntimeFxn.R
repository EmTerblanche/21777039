#Runtime Popularity

RuntimeFxn <- function(data_frame, Title, Subtitle){
  
  Movies <- NetflixData %>% 
    filter(type == "MOVIE")
  
  g <- data_frame %>% 
    ggplot() + 
    geom_point(aes(x = runtime, y = imdb_score), size = 0.5, color = "darkred") +
    labs(title = Title, subtitle = Subtitle) +
    xlab("Runtime") +
    ylab("IMdb Score")
  g
}