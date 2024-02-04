x <- 5
y <- 11

z <- x + y

print(z)


# The bellow code will set up git and github connection with rstudio
git reset --hard "insert SHA number"
?use_github
library(usethis)
edit_r_environ()
use_github(protocol = 'https', auth_token = Sys.getenv("GITHUB_PAT"))

token <- GITHUB_PAT = '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'
