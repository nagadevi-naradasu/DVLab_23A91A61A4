# Acceessing info about the dataset
?VADeaths
#Checking the type of dataset 
class(VADeaths)
# accessing help for unknown functions or classes
help(class)


# convertinf given dataset into dataframe
va_df <- as.data.frame(VADeaths)

#checking to confirm if the dataser is changed to DataFrame
class(va_df)

#creating a view of the dataset in the form of a table
View(va_df)

#Creating a new column in the dataframe
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
va_df

# changing the data into "LONG" format using reshape function
va_long=reshape(va_df,
                direction="long",
                varying=colnames(VADeaths),
                v.names="DeathRate",
                timevar="Population",
                times=colnames(VADeaths)
                )
View(va_long)


# Building a basic histogram
hist(va_long$DeathRate)
help(hist)


#Changing title and labels
hist(va_long$DeathRate,
     main="Basic Histogram of VA Deathrates",
     xlab="VA Deathrates",
     ylab="Frequency",
     labels=TRUE,
     col="lavender",
     border="maroon",
)


#Data
#Asthetics -->X,,Y axis to various variables
#Geometry
#Facets
#Statistics
#Coordinates
#Themes
#Labels
library(ggplot2)

ggplot(
  va_long,
  aes(x=DeathRate)
)+
  geom_histogram(bins=5,
                 fill="steelblue",col="red")+
  labs(title="GGPLOT-Histogram",
       x="Death Rate",
       y="Frequency")

labs(title="GGPLOT-Histogram",
     x="Death Rate",
     y="Frequency")+
  
  
  
help(ggplot)
    
