The run_analysis.R script read data from the Human Activity Recognition Using Smartphones study from the following link, combine and convert to a tidy data set

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

======================================================================================

This work is part of the course project of Getting and Cleaning Data on CourseSera provided by Jeff Leek, PhD, Roger D. Peng, PhD and Brian Caffo, PhD in Johns Hopkins University

Script is created by Wenjun Xie on June 21, 2015

https://class.coursera.org/getdata-015


Before processsing the data
======================================================================================

-Original data dowloaded from the website and unzipped on a local drive, in the R work directory
-The dataset includes the following files:
	- 'README.txt'
	- 'features_info.txt': Shows information about the variables used on the feature vector.
	- 'features.txt': List of all features.
	- 'activity_labels.txt': Links the class labels with their activity name.
	- 'train/X_train.txt': Training set.
	- 'train/y_train.txt': Training labels.
	- 'test/X_test.txt': Test set.
	- 'test/y_test.txt': Test labels.
	- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The run_analysis.R script consolidate and clean the data following the following steps
=======================================================================================

1. Read data to R
	- Use read.table to read data from the .txt files in the train and test subfolder under UCI HAR Dataset. 
	- Files in the Inertial Signals subfolders are not loaded, and will not be used in this analysis.
	- Use the colClasses argument to make read.table of X_train.txt and X_test.txt faster. X_train.txt and X_test.txt contrain large dataset which are the main measurement data.

2. Merge measuremnt features, subject information and activity information with the main measurement dataset
	- Data from 'features_info.txt' identify feature names corresponding to the 561-feature vector in both measurement dataset (train and test). After converted to a character vector, assign to column names of the measurement dataset with the names()= command.
	- Convert data from 'y_train.txt' and 'y_test.txt' to vectors and merge with the train and test measurement dataset with the rbind() function, respectively.
	- Convert data from 'subject_train.txt' and 'subject_test.txt' to vectors and merge with the train and test measurement data set with the rbind() function, respectively.

3. Merge the train and test measurement dataset
	- The train and test dataset are now labeled with descriptive column names and include activity and subject information in two new columns. The two have the same number of columns and can be merged with the cbind() function. The merged dataset now include measurements of the total 30 subjects in the study.
	
4. Substitute column names of dataset with valid column names
	- Use the make.names() function to generate valid column names from the existing column names which contains invalid symbols such as "()", and at the same time remove duplicated column names.
	- Use the names()= command to assign the measurement data with valid column names, which is also descriptive to the features measured.

5. Extracts measurements on mean and standard deviation for each measurement
	- Use the select() function in the {dplyr} package to select a subset of the measurement data with column names contains "mean" and "std".
	- Use the select() function to remove columns that have name containing "Meanfreq" from the selected data, as such columns are defined as "Weighted average of the frequency components to obtain a mean frequency" and do not have a corresponding "std" column present, hence not the same type of mean value as others.

6. Uses descriptive activity names to name the activities in the data set
	- Use the factor() function to generate a factor labeling the Activities codes with descriptions from the 'activity_labels.txt' file.
	- Substitute the Activities column in the dataset with the discriptive factor.

7. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	- Use the group_by function in the {dplyr} package to reshape the data to show average of slected measurements for each activity and each subject.

8. Write cleaned data to file
	- Write the cleaned dataset to file "Results.txt" using the write.table function, with row.name = False to exclude row names.


Notes:
=========================================================================================

For more information about the analysis, refer to CodeBook.md and the website:

https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3