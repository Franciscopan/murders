library(tidyverse)
load("rda/murders.rda")
murders
murders%>%
  mutate(abb=reorder(abb,rate))%>%
  ggplot(aes(abb,rate))+
  geom_bar(width = 0.5,stat = "identity",color="blue")+
  coord_flip()
ggsave("figs/barplot.png")
