
library(tidyverse)

library(palmerpenguins)
library(ggthemes)

glimpse(penguins)

ggplot(penguins, aes(flipper_length_mm, body_mass_g)) +
  geom_point(aes(color = bill_depth_mm))+
  geom_smooth(method = "lm")


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )


ggplot(penguins, aes(fct_infreq(species)))+
  geom_bar()

ggplot(penguins, aes(body_mass_g))+
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(body_mass_g))+
  geom_density()


ggplot(penguins, aes(y = fct_infreq(species)))+
  geom_bar()

ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")


ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")


ggplot(diamonds, aes(carat))+
  geom_histogram(binwidth = 0.3)

ggplot(penguins, aes(species, body_mass_g))+
  geom_boxplot()

ggplot(penguins, aes(body_mass_g, color = species, fill = species))+
  geom_density(linewidth = 0.75, alpha = 0.5)


ggplot(penguins, aes(island, fill = species)) +
  geom_bar(position = "fill")

ggplot(penguins, aes(bill_depth_mm, bill_length_mm))+
  geom_point(aes(color = species, shape = island))+
  facet_wrap(~island)

ggplot(mpg, aes(hwy, displ, size = year))+
  geom_point(aes(color = year, linewidth = year))

ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species))+
  geom_point()+
  facet_wrap(~species)


ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() 


ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")
