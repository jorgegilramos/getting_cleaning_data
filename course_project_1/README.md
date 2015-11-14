## Introduction

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

    1) Merges the training and the test sets to create one data set.
    2) Extracts only the measurements on the mean and standard deviation for each measurement. 
    3) Uses descriptive activity names to name the activities in the data set.
    4) Appropriately labels the data set with descriptive variable names. 
    5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!

## Codebook

Variables names:

*  id
*  activity
*  tBodyAcc.std...X
*  tBodyAcc.std...Y
*  tBodyAcc.std...Z
*  tGravityAcc.std...X
*  tGravityAcc.std...Y
*  tGravityAcc.std...Z
*  tBodyAccJerk.std...X
*  tBodyAccJerk.std...Y
*  tBodyAccJerk.std...Z
*  tBodyGyro.std...X
*  tBodyGyro.std...Y
*  tBodyGyro.std...Z
*  tBodyGyroJerk.std...X
*  tBodyGyroJerk.std...Y
*  tBodyGyroJerk.std...Z
*  tBodyAccMag.std..
*  tGravityAccMag.std..
*  tBodyAccJerkMag.std..
*  tBodyGyroMag.std..
*  tBodyGyroJerkMag.std..
*  fBodyAcc.std...X
*  fBodyAcc.std...Y
*  fBodyAcc.std...Z
*  fBodyAccJerk.std...X
*  fBodyAccJerk.std...Y
*  fBodyAccJerk.std...Z
*  fBodyGyro.std...X
*  fBodyGyro.std...Y
*  fBodyGyro.std...Z
*  fBodyAccMag.std..
*  fBodyBodyAccJerkMag.std..
*  fBodyBodyGyroMag.std..
*  fBodyBodyGyroJerkMag.std..
*  tBodyAcc.mean...X
*  tBodyAcc.mean...Y
*  tBodyAcc.mean...Z
*  tGravityAcc.mean...X
*  tGravityAcc.mean...Y
*  tGravityAcc.mean...Z
*  tBodyAccJerk.mean...X
*  tBodyAccJerk.mean...Y
*  tBodyAccJerk.mean...Z
*  tBodyGyro.mean...X
*  tBodyGyro.mean...Y
*  tBodyGyro.mean...Z
*  tBodyGyroJerk.mean...X
*  tBodyGyroJerk.mean...Y
*  tBodyGyroJerk.mean...Z
*  tBodyAccMag.mean..
*  tGravityAccMag.mean..
*  tBodyAccJerkMag.mean..
*  tBodyGyroMag.mean..
*  tBodyGyroJerkMag.mean..
*  fBodyAcc.mean...X
*  fBodyAcc.mean...Y
*  fBodyAcc.mean...Z
*  fBodyAcc.meanFreq...X
*  fBodyAcc.meanFreq...Y
*  fBodyAcc.meanFreq...Z
*  fBodyAccJerk.mean...X
*  fBodyAccJerk.mean...Y
*  fBodyAccJerk.mean...Z
*  fBodyAccJerk.meanFreq...X
*  fBodyAccJerk.meanFreq...Y
*  fBodyAccJerk.meanFreq...Z
*  fBodyGyro.mean...X
*  fBodyGyro.mean...Y
*  fBodyGyro.mean...Z
*  fBodyGyro.meanFreq...X
*  fBodyGyro.meanFreq...Y
*  fBodyGyro.meanFreq...Z
*  fBodyAccMag.mean..
*  fBodyAccMag.meanFreq..
*  fBodyBodyAccJerkMag.mean..
*  fBodyBodyAccJerkMag.meanFreq..
*  fBodyBodyGyroMag.mean..
*  fBodyBodyGyroMag.meanFreq..
*  fBodyBodyGyroJerkMag.mean..
*  fBodyBodyGyroJerkMag.meanFreq..


df_tidy.txt:

*  id
*  activity
*  colmean_tBodyAcc.std...X
*  colmean_tBodyAcc.std...Y
*  colmean_tBodyAcc.std...Z
*  colmean_tGravityAcc.std...X
*  colmean_tGravityAcc.std...Y
*  colmean_tGravityAcc.std...Z
*  colmean_tBodyAccJerk.std...X
*  colmean_tBodyAccJerk.std...Y
*  colmean_tBodyAccJerk.std...Z
*  colmean_tBodyGyro.std...X
*  colmean_tBodyGyro.std...Y
*  colmean_tBodyGyro.std...Z
*  colmean_tBodyGyroJerk.std...X
*  colmean_tBodyGyroJerk.std...Y
*  colmean_tBodyGyroJerk.std...Z
*  colmean_tBodyAccMag.std..
*  colmean_tGravityAccMag.std..
*  colmean_tBodyAccJerkMag.std..
*  colmean_tBodyGyroMag.std..
*  colmean_tBodyGyroJerkMag.std..
*  colmean_fBodyAcc.std...X
*  colmean_fBodyAcc.std...Y
*  colmean_fBodyAcc.std...Z
*  colmean_fBodyAccJerk.std...X
*  colmean_fBodyAccJerk.std...Y
*  colmean_fBodyAccJerk.std...Z
*  colmean_fBodyGyro.std...X
*  colmean_fBodyGyro.std...Y
*  colmean_fBodyGyro.std...Z
*  colmean_fBodyAccMag.std..
*  colmean_fBodyBodyAccJerkMag.std..
*  colmean_fBodyBodyGyroMag.std..
*  colmean_fBodyBodyGyroJerkMag.std..
*  colmean_tBodyAcc.mean...X
*  colmean_tBodyAcc.mean...Y
*  colmean_tBodyAcc.mean...Z
*  colmean_tGravityAcc.mean...X
*  colmean_tGravityAcc.mean...Y
*  colmean_tGravityAcc.mean...Z
*  colmean_tBodyAccJerk.mean...X
*  colmean_tBodyAccJerk.mean...Y
*  colmean_tBodyAccJerk.mean...Z
*  colmean_tBodyGyro.mean...X
*  colmean_tBodyGyro.mean...Y
*  colmean_tBodyGyro.mean...Z
*  colmean_tBodyGyroJerk.mean...X
*  colmean_tBodyGyroJerk.mean...Y
*  colmean_tBodyGyroJerk.mean...Z
*  colmean_tBodyAccMag.mean..
*  colmean_tGravityAccMag.mean..
*  colmean_tBodyAccJerkMag.mean..
*  colmean_tBodyGyroMag.mean..
*  colmean_tBodyGyroJerkMag.mean..
*  colmean_fBodyAcc.mean...X
*  colmean_fBodyAcc.mean...Y
*  colmean_fBodyAcc.mean...Z
*  colmean_fBodyAcc.meanFreq...X
*  colmean_fBodyAcc.meanFreq...Y
*  colmean_fBodyAcc.meanFreq...Z
*  colmean_fBodyAccJerk.mean...X
*  colmean_fBodyAccJerk.mean...Y
*  colmean_fBodyAccJerk.mean...Z
*  colmean_fBodyAccJerk.meanFreq...X
*  colmean_fBodyAccJerk.meanFreq...Y
*  colmean_fBodyAccJerk.meanFreq...Z
*  colmean_fBodyGyro.mean...X
*  colmean_fBodyGyro.mean...Y
*  colmean_fBodyGyro.mean...Z
*  colmean_fBodyGyro.meanFreq...X
*  colmean_fBodyGyro.meanFreq...Y
*  colmean_fBodyGyro.meanFreq...Z
*  colmean_fBodyAccMag.mean..
*  colmean_fBodyAccMag.meanFreq..
*  colmean_fBodyBodyAccJerkMag.mean..
*  colmean_fBodyBodyAccJerkMag.meanFreq..
*  colmean_fBodyBodyGyroMag.mean..
*  colmean_fBodyBodyGyroMag.meanFreq..
*  colmean_fBodyBodyGyroJerkMag.mean..
*  colmean_fBodyBodyGyroJerkMag.meanFreq..

