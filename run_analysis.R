#########################################################################################
############################## Getting and cleaning data assignment #####################
#########################################################################################


library(dplyr)

### set directory ####

setwd("C:/Users/lsporte1/Desktop/DATA SCIENCE")

#### download file ####

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist

dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

##### reading all datasets ####

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

#### Merges the training and the test sets to create one data set ####

all = rbind(
  
  cbind(subject_train, y_train, x_train),
  cbind(subject_test, y_test, x_test)
  
)

#### Extracts only the measurements on the mean and standard deviation for each measurement ####

columnsToKeep <- grepl("subject|code|mean|std", colnames(all))
all = all[,columnsToKeep]

#### Uses descriptive activity names to name the activities in the data set ####

all$code = activities[all$code,2]

#### Appropriately labels the data set with descriptive variable names ####

names(all)[2] = "activity"
names(all)<-gsub("Acc", "Accelerometer", names(all))
names(all)<-gsub("Gyro", "Gyroscope", names(all))
names(all)<-gsub("BodyBody", "Body", names(all))
names(all)<-gsub("Mag", "Magnitude", names(all))
names(all)<-gsub("^t", "Time", names(all))
names(all)<-gsub("^f", "Frequency", names(all))
names(all)<-gsub("tBody", "TimeBody", names(all))
names(all)<-gsub("-mean()", "Mean", names(all), ignore.case = TRUE)
names(all)<-gsub("-std()", "STD", names(all), ignore.case = TRUE)
names(all)<-gsub("-freq()", "Frequency", names(all), ignore.case = TRUE)
names(all)<-gsub("angle", "Angle", names(all))
names(all)<-gsub("gravity", "Gravity", names(all))

### From the data set in step 4, creates a second, independent tidy data set ####
###  with the average of each variable for each activity and each subject     ####

all_tidy = all %>% 
  group_by(subject, activity) %>%
  summarise_all(list(mean)) 

#### save ####

write.table(all_tidy,"all_tidy.txt",row.names = F)






















