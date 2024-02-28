#sentiment analysis
library(tidytext)

library(tidyverse)


get_sentiments("bing")


# Read the content of the text file
text <- readLines("text.txt")

  
df_text <- tibble(line = 1:length(text), words = text)
  
df_text <- df_text %>% 
  unnest_tokens(word, words)

data("stop_words")  
  

tidy_text <- df_text |> 
  anti_join(stop_words)

tidy_text |>
  count(word, sort = TRUE) 


tidy_text |>
  inner_join(get_sentiments("bing")) |>
    count(sentiment)

tidy_text |>
  inner_join(get_sentiments("nrc"), relationship = "many-to-many") |>
    filter(sentiment %in% c("positive", "negative")) |>
      count(sentiment)
     