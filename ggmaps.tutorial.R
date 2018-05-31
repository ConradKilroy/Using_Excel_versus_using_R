
#source tutorial: http://www.stevebronder.com/news/2014/8/3/8el0szzsaxhfiljvkf8f4uty2yiinh

#mapping with ggmaps

install.packages("ggmap")

library(ggmap)
add<-"data/ggmaps.coord.example.data.csv"
df<-read.csv(add,header=TRUE,stringsAsFactors=FALSE)

#create map
mapgilbert <- ggmap::get_map(location = c(lon = mean(df$lon)-2,
                                   lat = mean(df$lat))-1, zoom = 4, scale = 1)

DotMap <- ggmap(mapgilbert) + 
        geom_point(data = df,aes(x = lon, y = lat, fill = "red", alpha = 0.7), size = 1, shape = 22) +
        guides(fill=FALSE, alpha=FALSE, size=FALSE)
DotMap

FinalMap<-DotMap +
          geom_density2d(data = df, aes(x = lon, y = lat,fill="white"))
FinalMap
