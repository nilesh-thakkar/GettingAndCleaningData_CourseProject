#Unzipping the data file and moving working directory to the data folder
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
setwd("UCI HAR Dataset")

#reading the data files containing activity and features info into R
activityLables <- read.table("activity_labels.txt")
features <- read.table("features.txt")

#reading the test data files into R and inserting the Activity column from Y to X
testDataX <-read.table("test/X_test.txt")
testDataY <- read.table("test/Y_test.txt")
activityTestData <- NULL
for(i in 1:nrow(testDataY)) {
  activityTestData <- c(activityTestData, as.character(activityLables[testDataY[i,],2]))
}
testDataX$Activity <- as.factor(activityTestData)

#Reading the subject data set for test data and inserting the Subject column in X
subjectTest <- read.table("test/subject_test.txt")
testDataX$Subject <- subjectTest$V1

#reading the train data files into R and inserting the Activity column from Y to X
trainDataX <- read.table("train/X_train.txt")
trainDataY <- read.table("train/Y_train.txt")
activityTrainData <- NULL
for(i in 1:nrow(trainDataY)) {
  activityTrainData <- c(activityTrainData, as.character(activityLables[trainDataY[i,],2]))
}
trainDataX$Activity <- as.factor(activityTrainData)

#Reading the subject data set for train data and inserting the Subject column in X
subjectTrain <- read.table("train/subject_train.txt")
trainDataX$Subject <- subjectTrain$V1

#Merging the taining and test data sets and rearranging columns to bring "Subject and "Activity" columns to the begining
totalDataX <- rbind(trainDataX,testDataX)
activityIndex <- grep("Activity",names(totalDataX))
subjectIndex <- grep("Subject", names(totalDataX))
totalDataX <- totalDataX[,c(subjectIndex, activityIndex, (1:(ncol(totalDataX) - 2)))]

#Extracting only mean and standard deviation for each measurement
colNames <- as.character(features$V2)
colNames <- c("Subject", "Activity", colNames)
colnames(totalDataX) <- colNames
index <- grepl("mean|std", as.character(features$V2))
index <- c(TRUE, TRUE, index)
strippedDataX <- totalDataX[,index]

#removing features with "meanFreq" as they are not true means
index <- grepl("meanFreq", names(strippedDataX))
strippedDataX <- strippedDataX[,!index]

#Giving descriptive column names
colNames <- names(strippedDataX)
colNames <- sub("-mean\\(\\)", "Mean",colNames)
colNames <- sub("-std\\(\\)", "StandardDeviation",colNames)
colNames <- sub("-X", "Xaxis",colNames)
colNames <- sub("-Y", "Yaxis",colNames)
colNames <- sub("-Z", "Zaxis",colNames)
colNames <- sub("^t", "TimeValue", colNames)
colNames <- sub("^f", "FrequencyValue", colNames)
colNames <- sub("Acc", "Accelerometer", colNames)
colNames <- sub("Gyro", "Gyroscope", colNames)
colNames <- sub("Mag", "Magnitude", colNames)

colnames(strippedDataX) <- colNames

#Computing average of each variable for each activity and each subject
tidyData <- aggregate(strippedDataX, by = list(strippedDataX$Subject, strippedDataX$Activity), FUN = mean, na.rm = TRUE)
#This leaves us with duplicate columns, hence removing the unwanted columns and giving proper names to the others
tidyData$Subject = NULL
tidyData$Activity = NULL
colnames(tidyData)[1] = "Subject"
colnames(tidyData)[2] = "Activity"

setwd("../")
write.table(x = tidyData, file = "TidyData.txt")