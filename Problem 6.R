arrival_rates_df$rate <- arrival_rates_df$observed_rate
mst <- max(arrival_rates_df$rate)
candidate_times <- rep(0, 1:nrow(arrival_rates_df))


# make the unique origin-destination pairs
origin_destination_pairs <- arrival_rates_df |> 
  distinct(origin, destination)

candidate_times <- rep(0, 1:nrow(origin_destination_pairs))


for(pair in origin_destination_pairs){
  pair_origin <- origin[pair]
  pair_destination <- destination[pair]
  start_time <- candidate_times[pair]
  mst <- max(arrival_rates_df$rate)
  
  if(mst == 0){
    next
  }
  else{
    waiting_time <- rexp(n = 1, rate = mst)
    candidate_time <- start_time + waiting_time
    if((end_time - candidate_time) <= 0)
      candidate_time[pair] <- candidate_time
    break
  }
  
  for(times in rate_table$candidate_time){
    hour <- candidate_time$hour #posixct object
    hourly_rate <- 
      acceptance_probability <- hourly_rate / mst
    unif_value <- runif(0, 1)
    if(unif_value > acceptance_probability)
  }
}




#' @param rate_table dataframe with the rates


simulate_arrivals <- function(rate_table, start_time, end_time){
  
  # iterate across the origin-destination pairs
  # need to find for an individual pair
  
}

}