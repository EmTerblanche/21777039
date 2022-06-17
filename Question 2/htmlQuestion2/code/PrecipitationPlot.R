#London Precipitation Plot 


PrecipitationPlot <- function(data_frame, Title, Subtitle,
                              xaxis_size = 10,
                              xaxis_rows = 2){
  
  options(dplyr.summarise.inform=F)

  g <-
    data_frame %>% ggplot() + 
    geom_point(mapping = aes(MonthNew, precipitation), colour = "steelblue", alpha = 0.6) + 
    theme_bw() + 
    labs(title = Title, subtitle = Subtitle) +
    theme(legend.position = "top", legend.title = element_blank()) +
    theme(plot.title = element_text(size = 14),
          plot.subtitle = element_text(size = 12), axis.text.x = element_text(size = xaxis_size))
  
  g
}