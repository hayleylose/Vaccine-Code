#Hayley Lose

##plotting locations
##map of united states where followers are identifying their location

library(ggplot2)
library(mapdata)
library(ggmap)
library(maps)

usa <- map_data("usa")
states <- map_data("state")
##united states 
map <- ggplot(data = states) + 
  geom_polygon(aes(x = long, y = lat, group = group), color = "black", fill = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)

map + ggtitle("Twitter Location Distribution")

geocode('California')
geocode('New York')
geocode('Texas')
geocode('Florida')
geocode('Illinois')
geocode('New Jersey')
geocode('Michigan')



#coordinates of states into dataframe
labs <- data.frame(lat = c(36.7783, 40.71278, 31.9686, 27.66483, 40.63312, 40.05832, 44.31484),
                   long = c(-119.4179, -74.00597, -99.90181, -81.51575, -89.39853,-74.40566,-85.60236),
                   values = c(500, 313, 247, 216, 300,131, 123),
                   stringsAsFactors = FALSE)

#adding coordinates to map
map +
  geom_point(data = labs, aes(x = long, y = lat, size = values), color = "blue") 



