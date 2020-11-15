################################################################
################## Wrangling the Pound Hill Dataset ############
################################################################

############# Load the dataset ###############

#### convert DataWrang.R to use tidyverse ####

require(tidyverse)

# header = false because the raw data don't have real headers
MyData <- as.matrix(read.csv("../Data/PoundHillData.csv", header = FALSE))

# header = true because we do have metadata headers
MyMetaData <- read.csv("../Data/PoundHillMetaData.csv", header = TRUE, sep = ";")

############# Inspect the dataset ###############
#head(MyData)
tibble::as.tibble(MyData)
head(MyData)

#dim(MyData)

dplyr::dim_desc(MyDara)
#str(MyData)

dplyr::glimpse(MyData)

#fix(MyData) #you can also do this
#fix(MyMetaData)

utils::View(MyData)
utils::View(MyMetaData)

############# Transpose ###############
# To get those species into columns and treatments into rows 
MyData <- t(MyData) 
MyData <- gather(MyData, Cultivation, Block, Plot, Quadrat, ..., na.rm = TRUE)

head(MyData)
dplyr::dim_desc(MyData)

############# Replace species absences with zeros ###############
MyData[MyData == ""] = 0

############# Convert raw matrix to data frame ###############

TempData <- as.data.frame(MyData[-1,],stringsAsFactors = F) #stringsAsFactors = F is important!
colnames(TempData) <- MyData[1,] # assign column names from original data

############# Convert from wide to long format  ###############
require(reshape2) # load the reshape2 package

#?melt #check out the melt function
gather(TempData, Species, Count, ...)

MyWrangledData <- melt(TempData, id=c("Cultivation", "Block", "Plot", "Quadrat"), variable.name = "Species", value.name = "Count")

MyWrangledData[, "Cultivation"] <- as.factor(MyWrangledData[, "Cultivation"])
MyWrangledData[, "Block"] <- as.factor(MyWrangledData[, "Block"])
MyWrangledData[, "Plot"] <- as.factor(MyWrangledData[, "Plot"])
MyWrangledData[, "Quadrat"] <- as.factor(MyWrangledData[, "Quadrat"])
MyWrangledData[, "Count"] <- as.integer(MyWrangledData[, "Count"])

str(MyWrangledData)
head(MyWrangledData)
dim(MyWrangledData)

############# Exploring the data (extend the script below)  ###############
