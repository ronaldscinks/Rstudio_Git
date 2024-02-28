library(nycflights13)

library(tidyverse)


View(flights)


flights |>
    filter(dep_delay > 120)

flights |>
  filter(month %in% 1:2)

flights |> 
  arrange(year, month, day, dep_time)

flights |>
  arrange(desc(dep_delay))

flights |>
  distinct(origin, dest, .keep_all = TRUE)

flights |> 
  count(origin, dest, sort = TRUE)

flights |> 
  filter(arr_delay > 120)

flights |> 
  filter(dest == "HOU")

flights |> 
  filter(carrier == "UA" | carrier == "AA" | carrier == "DL")


flights |> 
  filter(month %in% 7:9)

flights |> 
  filter(dep_delay <= 0 & arr_delay >= 120)

flights |> 
  filter(dep_delay >= 60 &  dep_delay - arr_delay > 30  )

flights |> 
  arrange(arr_time - dep_time)

flights|> 
  filter(year == 2013) |>
     distinct(month,day)

flights |> 
  filter(distance == min(distance))

flights |> 
  mutate(gain = dep_delay - arr_delay,
         hours = air_time / 60,
         gain_per_hour = gain / hours,
         .keep = "used"
         )




