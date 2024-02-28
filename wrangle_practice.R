library(nycflights13)

library(tidyverse)


# check out -> janitor::clean_names(), if need a large amount of column names to
# be changed

# filter <- filters rows
# arrange <- allows to sort rows
#count <- counts the amount of unique rows (combinations)


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

flights |> 
  select(year, month, day)


flights |> 
  select(year:day)

flights |> 
  select(!year:day)

flights |>
  select(where(is.character))

# the new name is on the left
flights |> 
  select(tail_num = tailnum)

flights|>
  rename(tail_num = tailnum)

flights |> 
  relocate(time_hour, air_time)

flights |> 
  relocate(year:dep_time, .after = time_hour)
flights |> 
  relocate(starts_with("arr"), .before = dep_time)

flights |> 
  select(dep_time, sched_dep_time, dep_delay)

flights |>
  select(4, 6,7, 9)

variables <- c("year", "month", "day", "dep_delay", "arr_delay")
flights |>
  select(any_of(variables))

flights |>
  select(contains("TIME"))

flights |> 
  rename(air_time_min = air_time) |>
    relocate(air_time_min)


flights |> 
  group_by(month) |> 
    summarize(
      avg_delay = mean(dep_delay, na.rm = TRUE),
      n = n()
      )

flights |> 
  group_by(dest) |> 
    slice_max(arr_delay, n = 1) |> 
      relocate(dest)


flights |> 
  group_by(carrier, origin) |> 
    slice_max(dep_delay, n = 1) |> 
      relocate(carrier, origin) |> 
        ungroup() |> 
        summarize(n(), .by = c(carrier), sort = TRUE)

flights |> 
  group_by(dest) |> 
    slice_max(dep_delay, n = 1) |> 
      relocate(dest)

flights |> 
ggplot(aes(dep_time, dep_delay))+
  geom_point()

    

  min(flights$dep_delay, na.rm = TRUE)
  max(dep_delay)
  min(dep_time)
  max(dep_time)


View(flights)



                  