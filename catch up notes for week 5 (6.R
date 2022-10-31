library(tidyverse)
library(gapminder)

# filter for values in Europe and the year 2007
gapminder %>%
pivot_longer(lifeExp:gdpPercap) %>%
filter(str_detect(continent, "Europe"),
       year > 1987)  %>%
         ggplot() +
         aes(x = year,
             y = value,
             colour = name) + 
         geom_line() +
         facet_wrap(~ country)
       