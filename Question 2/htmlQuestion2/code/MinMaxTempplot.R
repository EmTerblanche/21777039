#London Monthly Temperature Range

MinMaxTempplot <- function(data_frame, Title, Subtitle, xaxis_size = 10, xaxis_rows = 2){
  
  g1 <-   
    LondonData %>% ggplot() + 
    geom_point(mapping = aes(Month, min_temp), colour = "black", alpha = 0.6) + 
    geom_point(mapping = aes(Month, max_temp), colour = "steelblue", alpha = 0.6) +
    guides(size = "none") + 
    theme_bw() + 
    labs(title = Title, subtitle = Subtitle) +
    ylab("Temperature")
  theme(legend.position = "top", legend.title = element_blank()) +
    theme(plot.title = element_text(size = 14),
          plot.subtitle = element_text(size = 12), axis.text.x = element_text(size = xaxis_size)) +
    guides(fill = F)
  
  labs(title = Title, 
       subtitle = Subtitle)
  
  g1  
  
}