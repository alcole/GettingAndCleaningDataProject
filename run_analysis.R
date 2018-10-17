# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.


#add error checking for the working directory

library(dplyr)
### merge training and test set

## submit type of test or train
loadData <- function(type) {
  subjects <- read.csv(paste("./UCI HAR Dataset/",type,"/subject_",type,".txt", sep=""), header=FALSE, col.names = "subject_id")
  ys <- read.csv(paste("./UCI HAR Dataset/",type,"/y_",type,".txt", sep=""), header=FALSE, col.names = "activity")
  data <- read.fwf(paste("./UCI HAR Dataset/",type,"/X_",type,".txt", sep=""), widths)
  
  #subset the data
  data <- data[findexes]
  names(data) <- fnames
  
  #add subject and activity columns
  #activities <- merge(ys, activity_labels)
  res1 <- cbind(subjects, ys, data)
  
  res1$activity <- activity_labels[res1$activity, 2]
  res1
}


activity_labels <- read.delim("./UCI HAR Dataset/activity_labels.txt", header=FALSE, sep= " ",col.names = c("code", "activity"))


#get features and filter to those with mean and sd
features <- read.delim("./UCI HAR Dataset/features.txt", header=FALSE, sep= " ")

fnames <- features$V2[grep("mean|std", features$V2)]
findexes <- features$V1[grep("mean|std", features$V2)]


#load test and training sets
widths <- rep(16, 561)
test = loadData("test")
train = loadData("train")
remove(widths)

data <- rbind(test, train)
#remove unnecessary objects
remove(test)
remove(train)

remove(activity_labels)
remove(features)

# tidy the column names
names(data) <- gsub("\\(\\)", "", names(data))
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("-", ".", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))


# group by subject_id and activity and calculate means on the columns
finalPrep <- tbl_df(data)
by_user_activity <- group_by(finalPrep, subject_id, activity)
remove(finalPrep)
summarize_all(by_user_activity, mean) -> finalData

# output a new final tidy data
write.table(finalData, "finalData.txt", row.name=FALSE)
