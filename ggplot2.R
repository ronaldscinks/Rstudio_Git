#ggplot2

#1st layer define data 
our.plot <- ggplot(df)
our.plot
# 2nd layer add aesthethics (mapping of x and y)
our.plot <- our.plot + aes(Birth.rate, Internet.users)
our.plot
# 3rd layer add geom
our.plot <- our.plot + geom_point()
our.plot
# 4th layer adding stats
our.plot <- our.plot + stat_smooth()
our.plot
# 5th layer adding facets
our.plot <- our.plot + facet_wrap(vars(Income.Group))
our.plot

# 6th layer adding coordinates
our.plot <- our.plot + coord_cartesian(xlim = c(5,50),
                                       ylim = c(0,120))
our.plot

# 7th layer adding theme
our.plot <- our.plot + theme_classic()
our.plot

#another example
#1st layer define data 
ggplot(df)
# 2nd layer add aesthethics (mapping of x and y)
ggplot(df, aes(Internet.users, region))
# 3rd layer add geom
ggplot(df, aes(Internet.users, region))+
  geom_boxplot(aes(fill = region))

ggplot(df, aes(Internet.users, Birth.rate))+
  geom_point(aes(color = region, size = Income.Group)) +
  geom_smooth(se = F, color = "green")


# 4th layer adding stats
ggplot(df, aes(Internet.users, region))+
  stat_summary(fun = "mean", geom = "bar")

# 5th layer adding facets
ggplot(df, aes(Internet.users, region))+
  geom_boxplot() +
  facet_wrap(vars(Income.Group))


# 6th layer adding theme
ggplot(df, aes(Internet.users, 
               reorder(region, Internet.users, decreasing = TRUE),
               fill = region)) + 
  geom_boxplot() +
  theme_classic() +
  theme(legend.position = "none") +
  labs(title = "Internet users by Region")+
  xlab("Internet users")+
  ylab("Region")+
  theme(plot.title = element_text(color = "blue", size = 30, family = "mono"),
    axis.title.x = element_text(color = "DarkGreen", size = 20),
        axis.title.y = element_text(color = "Red", size = 20))
