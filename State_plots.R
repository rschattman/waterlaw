#### Water Law Map Script
#### Last updated: April 4, 2019
#### Author: Rachel Schattman

# Load libraries
library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)


US <- map_data("state")

NE <- subset(US, region %in% c("maine",
                                    "new hampshire",
                                    "vermont", 
                                    "new york", 
                                    "pennsylvania", 
                                    "massachusetts",
                                    "connecticut", 
                                    "rhode island", 
                                    "new jersey", 
                                    "maryland", 
                                    "delaware", 
                                    "west virginia"))
 

ggplot(data = NE) +
  geom_polygon(aes(x = long, y = lat, group = group), fill = "palegreen", color = "black") + 
  coord_fixed(1.3)
