

#Read in all the data. Data needs to be unzipped in working directory
#We will then reconsctruct the data into a data frame and return it. 
readAndMergeData <- function() {
  #Read label names
  lables <- read.table("features.txt", sep="")
  
  #Read train data
  tx <- read.table("train/X_train.txt")
  ty <- read.table("train/y_train.txt")
  tsub <- read.table("train/subject_train.txt")
  
  #Apply lables on train data
  names(tx) <- as.character(lables[,2])
  
  #Extract mean and std from train data
  tx <- tx[,grep("mean|std",colnames(tx),ignore.case=TRUE)]
  
  #Add subject on training data
  tx$subject <- tsub$V1
  #Add lables on training data
  tx$lables <- ty$V1
  
  #Read test data
  tey <- read.table("test/y_test.txt")
  tex <- read.table("test/X_test.txt")
  tesub <- read.table("test/subject_test.txt")
  
  #Apply lables on test data
  names(tex) <- as.character(lables[,2])
  
  #Extract mean and std from test data
  tex <- tex[,grep("mean|std",colnames(tex),ignore.case=TRUE)]
  
  #Add subject on training data
  tex$subject <- tesub$V1
  #Add lables on training data
  tex$lables <- tey$V1
  
  #merge training and test data
  merged <- rbind(tex, tx)
  merged
}


#Rename and clean up variables. Activities will be renames as in the 
# "activity_lables.txt" file as per default.
#Variable names are downcased, illegal characters removed and abbrivations expanded for clearity. 
rename <- function(aggregated, lablesFile="activity_labels.txt") {
  lables <- read.table(lablesFile)
  for (i in 1:nrow(aggregated)) { aggregated[i,88] <- as.character(lables[aggregated[i,88],2])}
  names(aggregated) <- tolower(names(aggregated))
  names(aggregated) <- gsub("acc", "acceleromater", names(aggregated))
  names(aggregated) <- gsub("-", "", names(aggregated))
  names(aggregated) <- gsub("_", "", names(aggregated))
  names(aggregated) <- gsub("\\(", "", names(aggregated))
  names(aggregated) <- gsub("\\)", "", names(aggregated))
  names(aggregated) <- gsub("\\,", "_", names(aggregated))
  names(aggregated) <- gsub("^t", "timeseries", names(aggregated))
  names(aggregated) <- gsub("^f", "frequencydomain", names(aggregated))
  names(aggregated) <- gsub("std", "standarddeviation", names(aggregated))
  names(aggregated) <- gsub("mag", "magnitude", names(aggregated))
  names(aggregated) <- gsub("_", "", names(aggregated))
  aggregated <- aggregated[,c(ncol(aggregated),1:(ncol(aggregated)-1))]
  aggregated <- aggregated[,c(ncol(aggregated),1:(ncol(aggregated)-1))]
  aggregated
}

crunch <- function(data) {
  #Aggregate data, to make sure we only keep what we need. 
  aggregated <- aggregate.data.frame(data, list(data$subject, data$lables),mean)[, c(-1,-2)]
  aggregated
}

#Read and merge data
data <- readAndMergeData()

#Aggregate the data
aggregated <- crunch(data)

#Clean it up, to have a tidy data set. 
tidy <- rename(aggregated)


