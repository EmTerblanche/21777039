#London Precipitation Plot 

PrecipitationPlot <- function(LondonDataOrdered, Title, Subtitle,
                              xaxis_size = 10,
                              xaxis_rows = 2){
  
  # This removes the ugly summarise warning...
  options(dplyr.summarise.inform=F)
  
  LondonDataOrdered <- mutate(LondonDataOrdered, MonthNew = recode(Month, "1" = "Jan",
                                                                   "2" = "Feb",
                                                                   "3" = "Mar",
                                                                   "4" = "April",
                                                                   "5" = "May",
                                                                   "6" = "Jun",
                                                                   "7" = "Jul",
                                                                   "8" = "Aug",
                                                                   "9" = "Sep",
                                                                   "10" = "Oct",
                                                                   "11" = "Nov",
                                                                   "12" = "Dec"))
  
  g <-
    LondonDataOrdered %>% ggplot() + 
    geom_point(mapping = aes(MonthNew, precipitation), colour = "steelblue", alpha = 0.6) + 
    guides(size = "none") + 
    theme_bw() + 
    labs(title = Title, subtitle = Subtitle) +
    theme(legend.position = "top", legend.title = element_blank()) +
    theme(plot.title = element_text(size = 14),
          plot.subtitle = element_text(size = 12), axis.text.x = element_text(size = xaxis_size)) +
    guides(fill = F)
  
  g
}