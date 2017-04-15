#Download zip file and unzip. 

##NOTE: This is done on a Windows platform and therefore CURL does not need to be used as part of the download arguement

filename<-"./data/getdata_projectfiles_UCI HAR Dataset.zip"

if (!file.exists(filename)){
        fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename)
        unzip(filename, exdir = "./data")
}

#Read data from feature and activity files, then rename columns
features <- read.table("./data/UCI HAR Dataset/features.txt") 
colnames(features) <- c("Feature_id", "Feature") 

activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt") 
colnames(activity) <- c("Activity_id", "Activity") 

#Load Training data set
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
colnames(x_train) <- features[,2]

y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt") 
colnames(y_train) <- "Activity_id" 

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt") 
colnames(subject_train) <- "Subject_id" 

#Load Test data set 

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt") 
colnames(x_test) <- features[,2] 

y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt") 
colnames(y_test) <- "Activity_id" 

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt") 
colnames(subject_test) <- "Subject_id" 

#Join datasets together

##Join the training data together
training_data <- cbind(subject_train, y_train, x_train)
##Join the test data together
test_data <- cbind(subject_test, y_test, x_test)
##Combine test and train data into one data set with merge function(). 
combineData <- rbind(test_data, training_data) 


#Creating a subset from original dataset containing only the mean() and std() variables

##get all column names from combined data
allnames <- names(combineData)

##Find mean() and std() as part of column names 
subnames<-grep("Subject.|Activity.|mean\\(\\)|std\\(\\)", allnames)

##Subset new Merged Dataset on desired columns 
combineData2 <- combineData[subnames] 

#Tidy up the variable names for the comdined dataset

## Tidy up the variable names of the dataset - replacing t with Time, 
## f with Frequency,
## -mean() with Mean, -std() with StandardDeviation, BodyBody with Body,
## Mag with Magnitude, Acc with Acceleration and removing any () or -.

names(combineData2)<-gsub("^(t)","Time-",names(combineData2))
names(combineData2)<-gsub("^(f)","Frequency-",names(combineData2))
names(combineData2)<-gsub("-mean()","Mean",names(combineData2))
names(combineData2)<-gsub("-std()","StandardDeviation",names(combineData2))
names(combineData2)<-gsub("BodyBody","Body",names(combineData2))
names(combineData2)<-gsub("Mag","Magnitude",names(combineData2))
names(combineData2)<-gsub("Acc","Acceleration",names(combineData2))
names(combineData2)<-gsub("\\()","",names(combineData2))
names(combineData2)<-gsub("\\-","",names(combineData2))

# Produce second tidy dataset with average of each variable for each activity for each subject

##use aggregate function to create second tidy dataset 
tidydata<-aggregate(combineData2, by=list(Subject_id=combineData2$Subject_id, Activity_id=combineData2$Activity_id),FUN = mean)

##remove first two columes that have been added on by the aggregate function
tidydata<-tidydata[,-(1:2)]

##Add in the activity name to the tidy data set
tidydata<-merge(activity, tidydata, by.x = "Activity_id", by.y="Activity_id", all=TRUE)

##View tidy data seyt before outputting to file
View(tidydata)

##then use write table to output to file.
write.table(tidydata, "./data/tidydata.txt", row.name = FALSE, col.names = TRUE)
