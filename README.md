This project is responsible for cleaning the and performaing some analysis on the data set from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

You should first download the following required data set and extract it into the same folder where run_analysis.R is placed.

So, to run the run_analysis.R, you should:

 1 - Download the dataset from:
     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
     
 2 - Extract it into the the directory where run_analysis.R is placed.
 
 3 - source('run_analysis.R')
 
 4 - As a result, you should see two files containing the processing result. The first one called tidydataset1.txt contains only the measurements on the mean and standard deviation for each measurement. The second one called tidydataset2.txt contains the average of each variable for each activity and each subject.
 
 To clean and compute the average and standard deviation of the tidydataset1.txt, the following lines describes briefly the steps performed by the script:
 
 1 - read the files test/X_test.txt and train/X_test.txt to a data frame and combine them to a new data.frame;
 
 2 - add the id column to that data frame;
 
 3 - calculate the mean and standard deviation for each measurement;
 
 4 - read the files test/Y_test.txt and train/Y_train.txt to a data frame and combine them to a new data.frame;
 
 5 - add the id column to that data frame;
 
 6 - merge the data frames by the id column;
 
 7 - write the result to the tidyDataset1.txt
 
 In order to clean and compute the average and standard devitation for each activity and subject, the following lines describes briefly the steps performed by the script:
 
 0 - Perform the same steps below and also;
 
 1 - read the files test/subject_test.txt and train/subject_train.txt to a data.frame and combine them to a data.frame;
 
 2 - Merge the data frame from last step with the data frame obtained from tidyDataset1
 
 3 - Compute the average and standard deviation to the aggregated by activity and subject
 
 4 - write the result to the tidyDataset2.txt
 
 A copy of both files are available in this folder to future examinations.
 
 You can have more information about the data files by seeing the CodeBook.md's content file.
