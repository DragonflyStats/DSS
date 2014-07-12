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
