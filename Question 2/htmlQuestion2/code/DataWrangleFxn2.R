DataWrangleFxn2 <- function(data_frame){
  
  LondonDataOrdered <- mutate(data_frame, MonthNew = recode(Month, "1" = "Jan",
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
  
  LondonDataOrdered}
