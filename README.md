# Getting-and-Cleansing-Data-Coursera-Week4-Project
This Readme file describes how the tidydata.txt file is created using the data downloaded from the following site:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R script undertakes the following steps:
1. Downloads the file onto the local PC (the script assumes that it is a windows platform) and unzips the file.
2. Imports the various different data files required
3. Combines the test and training datasets.
4. Creates a subset containing mean and standard deviation variables
5. Amend the variable names to make them more tidy - removing spaces, (), changing names to be more meaningful
6. Create a second tidydata set where the mean of the variables are calculated by activity and by subject.
7. Output the tidydata set to a text file.
