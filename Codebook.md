Getting and Cleansing Data Coursera Week4 Project Codebook

Extract from original Readme file 
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The full data set can be obtained here with further information about the original data.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The dataset has been processed using run_analysis.R to create the tidydata.txt file.

The data set contains 180 rows of data with 69 variables.

All variables are NUMERIC except for 'Activity' which is a FACTOR of the six activities - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

Each row contains the average values for each subject and activity for the mean and standard deviation variables selected.

The 69 variables are:

Activity_id: Values 1-6

Activity: Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Subject_id: Values 1-30

TimeBodyAccelerationMeanX

TimeBodyAccelerationMeanY

TimeBodyAccelerationMeanZ

TimeBodyAccelerationStandardDeviationX

TimeBodyAccelerationStandardDeviationY

TimeBodyAccelerationStandardDeviationZ

TimeGravityAccelerationMeanX

TimeGravityAccelerationMeanY

TimeGravityAccelerationMeanZ

TimeGravityAccelerationStandardDeviationX

TimeGravityAccelerationStandardDeviationY

TimeGravityAccelerationStandardDeviationZ

TimeBodyAccelerationJerkMeanX

TimeBodyAccelerationJerkMeanY

TimeBodyAccelerationJerkMeanZ

TimeBodyAccelerationJerkStandardDeviationX

TimeBodyAccelerationJerkStandardDeviationY

TimeBodyAccelerationJerkStandardDeviationZ

TimeBodyGyroMeanX

TimeBodyGyroMeanY

TimeBodyGyroMeanZ

TimeBodyGyroStandardDeviationX

TimeBodyGyroStandardDeviationY

TimeBodyGyroStandardDeviationZ

TimeBodyGyroJerkMeanX

TimeBodyGyroJerkMeanY

TimeBodyGyroJerkMeanZ

TimeBodyGyroJerkStandardDeviationX

TimeBodyGyroJerkStandardDeviationY

TimeBodyGyroJerkStandardDeviationZ

TimeBodyAccelerationMagnitudeMean

TimeBodyAccelerationMagnitudeStandardDeviation

TimeGravityAccelerationMagnitudeMean

TimeGravityAccelerationMagnitudeStandardDeviation

TimeBodyAccelerationJerkMagnitudeMean

TimeBodyAccelerationJerkMagnitudeStandardDeviation

TimeBodyGyroMagnitudeMean

TimeBodyGyroMagnitudeStandardDeviation

TimeBodyGyroJerkMagnitudeMean

TimeBodyGyroJerkMagnitudeStandardDeviation

FrequencyBodyAccelerationMeanX

FrequencyBodyAccelerationMeanY

FrequencyBodyAccelerationMeanZ

FrequencyBodyAccelerationStandardDeviationX

FrequencyBodyAccelerationStandardDeviationY

FrequencyBodyAccelerationStandardDeviationZ

FrequencyBodyAccelerationJerkMeanX

FrequencyBodyAccelerationJerkMeanY

FrequencyBodyAccelerationJerkMeanZ

FrequencyBodyAccelerationJerkStandardDeviationX

FrequencyBodyAccelerationJerkStandardDeviationY

FrequencyBodyAccelerationJerkStandardDeviationZ

FrequencyBodyGyroMeanX

FrequencyBodyGyroMeanY

FrequencyBodyGyroMeanZ

FrequencyBodyGyroStandardDeviationX

FrequencyBodyGyroStandardDeviationY

FrequencyBodyGyroStandardDeviationZ

FrequencyBodyAccelerationMagnitudeMean

FrequencyBodyAccelerationMagnitudeStandardDeviation

FrequencyBodyAccelerationJerkMagnitudeMean

FrequencyBodyAccelerationJerkMagnitudeStandardDeviation

FrequencyBodyGyroMagnitudeMean

FrequencyBodyGyroMagnitudeStandardDeviation

FrequencyBodyGyroJerkMagnitudeMean

FrequencyBodyGyroJerkMagnitudeStandardDeviation
