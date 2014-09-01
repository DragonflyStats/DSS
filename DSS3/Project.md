Script Guide:
=====================
- First it reads in all the data necessary; X_train.txt, X_test.txt, Y_test.txt, Y_train.txt, subject_test.txt, subject_train.txt, features.txt and activity_table.txt.
- It then merges the X train/test data and Y train/test data with rbind.
- It then finds the mean and std columns in the X data and separates those out as they are the ones we are interested in.
- Once that's done, it adds Activity and Subject columns to the data frame based on the Subject and Y data sets and splits the data based on these 2 factors.
- Lastly it creates a new data table with the column means for each data type for each subject/activity combination and prints them to .csv

#### Tidy_Data.csv guide:

- Reading through Tidy_Data.csv is easy enough. 
- The second column displays the observation type based on Activity and Subject Number then displays the average means and stds along the row.

<hr>
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Good luck!
