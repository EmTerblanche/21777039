#Movies vs Series
MovieSeriesFxn <- function(data_frame, Title, Subtitle){
  g <- data_frame %>% 
    ggplot() + 
    geom_line(aes(x = release_year, y = tmdb_popularity, color = type), alpha = 0.8, 
              size = 0.5) +
    labs(title = Title, subtitle = Subtitle) +
    xlab("Year of Release") +
    ylab("Popularity")
  g
}