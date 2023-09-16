########################
# Sept 7 2023
# Jeff Goldsmith
#
# data frames and plotting
########################

library(tidyverse)

example_df =
  tibble(
    vec_numeric = 5:8,
    vec_char = c("My", "name", "is", "Jeff"),
    vec_logical = c(TRUE, TRUE, FALSE, TRUE), 
  )


plot_df = 
  tibble(
    x = rnorm(1000, sd = 0.5), 
    y = 1 + 2 * x + rnorm(1000)
  )


ggplot(plot_df, aes(x = x)) + geom_histogram()

ggplot(plot_df, aes(x = x, y = y)) + geom_point()
ggsave("scatterplot.pdf")

