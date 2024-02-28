library(dplyr)
library(tidyr)
library(psych)
library(ggplot2)

data <- read.csv(file.choose())
View(data)

# add importance variable
data$importance_manipulation <- ifelse(data$chooserandom_1 > 3, 1,0)
# removes not valid participants (e.g. me) from the sample
data <- data[-c(1, 3,4,15,18,19),] 

# removes unnecassary string data
data <- data[, -c(1, 28, 30, 48, 66, 84, 102, 120, 167, 168)] 

# removes SE_p/N/N columns

data <- data[, -c(28:43, 45:60, 62:77, 79:94, 96:111, 113:128)]

# calculate cronbach alphas
# first subset the factors

#rotation and symmetry
r_s <- data[, 1:7]

#isometric and Orthographic views
i_o <- data[, 8:11]

# Folding Flat Patterns
f_f <- data[,12:15]

# Real-Life Tasks: Implicit VS Skill Use
impl_skill <- data[,16:21]

# Real-Life Tasks: Explicit VS Skill Use
expl_skill <- data[,22:25]


psych::alpha(r_s)
psych::alpha(i_o)
psych::alpha(f_f)
psych::alpha(impl_skill)
psych::alpha(expl_skill)
psych::alpha(cbind(impl_skill,expl_skill))
psych::alpha(data[,1:15])

# calculate subscale scores
#rotation and symmetry
data$r_s <- (data$three_d_questions_1 + data$three_d_questions_2 + 
  data$three_d_questions_3 + data$symmetry_questions_1 +
  data$symmetry_questions_2 + data$symmetry_questions_3 +
  data$symmetry_questions_4)/7

#isometric and orthographic views
data$i_o <- (data$iso_persp_questions_1 + data$iso_persp_questions_2 +
  data$iso_persp_questions_3 + data$iso_persp_questions_4)/4

# folding flat patterns
data$f_f <- (data$flat_pattern_questions_1 + data$flat_pattern_questions_2 +
  data$flat_pattern_questions_3 + data$flat_pattern_questions_4)/4

#real life tasks implicit skills
data$impl_skill <- (data$real_life_questions_1 + data$real_life_questions_2 + 
  data$real_life_questions_3 + data$real_life_questions_4 + data$real_life_questions_5 + 
  data$real_life_questions_6)/6

#real life tasks explicit skills
data$expl_skill <- (data$real_life_questions_7 + data$real_life_questions_8 + 
  data$real_life_questions_9 + data$real_life_questions_10)/4


# calculate means by group
data %>%
  group_by(chooserandom_1) %>%
    summarize_at(vars(score_2), 
                 list(score2 = mean))



score <- data[, c(26, 64, 45,48, 51, 54, 57, 60)]
View(score)
score$group[score$chooserandom_1 == 1 | score$chooserandom_1 == 4] <- 1 
score$group[score$chooserandom_1 == 2 | score$chooserandom_1 == 5] <- 2
score$group[score$chooserandom_1 == 3 | score$chooserandom_1 == 6] <- 3 

x <- aggregate(score$score_1, by = list(score$group), FUN = mean)
x2 <- aggregate(score$score_2, by = list(score$group), FUN = mean)
x3 <- aggregate(score$score_3, by = list(score$group), FUN = mean)
x4 <- aggregate(score$score_4, by = list(score$group), FUN = mean)
x5 <- aggregate(score$score_5, by = list(score$group), FUN = mean)
x6 <- aggregate(score$score_6, by = list(score$group), FUN = mean)

scores_by_group <- data.frame(cbind(x[,2],x2[,2],x3[,2],x4[,2], x5[,2], x6[,2]))
scores_by_group$group <- c(1,2,3)

scores_long <- scores_by_group %>% pivot_longer(1:6, cols_vary = "slowest",
                                                names_to = "trial",
                                                values_to = "score"
                                                )


scores_long$condition <- 0

 scores_long$condition[
   (scores_long$group == 1 & (scores_long$trial == "X2" | scores_long$trial == "X3") | 
     (scores_long$group == 2 & scores_long$trial == "X6") |
      scores_long$group == 3 & (scores_long$trial == "X4" | scores_long$trial == "X5")
      )] <- "real"

 scores_long$condition[
   (scores_long$group == 1 & (scores_long$trial == "X4" | scores_long$trial == "X5") | 
      (scores_long$group == 2 & (scores_long$trial == "X2"| scores_long$trial== "X3")) |
      scores_long$group == 3 & scores_long$trial == "X6"
   )] <- "pos"

 
 scores_long$condition[
   scores_long$trial == "X1"
   ] <- "first"
 
 scores_long$condition[scores_long$condition == 0] <- "neg"
 
 scores_long$condition <- factor(scores_long$condition,
                                 levels = c("first",
                                 "neg", "real", "pos"))

ggplot(scores_long, aes(condition, score))+
  geom_boxplot()



x <- aggregate(score$score_1, by = list(score$group, score$importance_manipulation), FUN = mean)
x2 <- aggregate(score$score_2, by = list(score$group,score$importance_manipulation), FUN = mean)
x3 <- aggregate(score$score_3, by = list(score$group,score$importance_manipulation), FUN = mean)
x4 <- aggregate(score$score_4, by = list(score$group,score$importance_manipulation), FUN = mean)
x5 <- aggregate(score$score_5, by = list(score$group,score$importance_manipulation), FUN = mean)
x6 <- aggregate(score$score_6, by = list(score$group,score$importance_manipulation), FUN = mean)
