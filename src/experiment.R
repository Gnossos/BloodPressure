myfilename <- "Zillow_neighborhood_home_values.csv"
download.file("http://files.zillowstatic.com/research/public/Neighborhood/Neighborhood_Zhvi_Summary_AllHomes.csv", myfilename)
bos_values <- rio::import("Zillow_neighborhood_home_values.csv") %>%
  filter(City == "Boston")

library(rlang)
mybarplot <- function(mydf, myxcol, myycol, mytitle) {
  ggplot2::ggplot(data = mydf, aes(x=reorder({{ myxcol }}, 
              {{ myycol}}), y = {{ myycol}})) +
    geom_col(color = "black", fill="#0072B2") +
    xlab("") +
    ylab("") +
    coord_flip() +
    ggtitle(mytitle) +
    theme_classic() +
    theme(plot.title = element_text(size=24))
}

mygraph <- mybarplot(bos_values, RegionName, Zhvi, 
          "Zillow Home Value Index")

mygraph +
  geom_text(aes(label=scales::comma(Zhvi, prefix = "$")),
            hjust=1.0, color="white", position = position_dodge(.9), size = 4) +
  theme(plot.title = element_text(size = 24))