#Population Density Graph Function

PopDensPointPlot <- function(CovidDataPopDensAve, Title, Subtitle,
                             xaxis_size = 10,
                             xaxis_rows = 2){
  
  options(dplyr.summarise.inform=F)
  
  g <-
    CovidDataPopDensAve[CovidDataPopDensAve$location %in% c("Afghanistan", "China", "Palestine", "Vatican", "Switzerland"),] %>% ggplot() + 
    geom_point(mapping = aes(AvePopDens, AveTotCases, color = location), alpha = 0.6) + 
    theme_bw() + 
    labs(title = Title, subtitle = Subtitle) +
    theme(legend.position = "top", legend.title = element_blank()) +
    theme(plot.title = element_text(size = 14),
          plot.subtitle = element_text(size = 12), axis.text.x = element_text(size = xaxis_size)) 
  
  g
}