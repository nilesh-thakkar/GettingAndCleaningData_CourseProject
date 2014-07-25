#Course Project for Getting and Cleaning Data

##Introduction
This project's objective is to improve and demonstrate the ability to collect, work with and clean a data set. The given data has to be transforemd into a tidy data set that can be used for further analysis.

##Data
Wearable computing is one of the most exciting areas in data science. The data provided for this assignment is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

According to the README provided with the data set the experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

##R Script
The R script [run_analysis.R](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/run_analysis.R) reads the data set and transforms it to a tidy data set ready for analysis. To run the R script set the working directory where the zipped data file was downloaded and execute the script. It unzips the data, reads it into the environment, transforms it and creates a tidy data set named "TidyData.txt" in the current working directory. Pointwise the script does the following:

* Unzip the data and read all of it(activity labels, features, train and test data) into the environment.
* Insert a column named "Activity" containing the activity info from train/test Y to X.
* Read the subject info and insert another column named "Subject" into X.
* Merge the train and test data set using 'rbind'.
* Extract mean and standard deviation fromm each measurement(features named meanFreq were removed).
* Descriptive names were given to each column. Beacuse the names contained multiple words, they were not converted to lowercase for better readability.
* Using 'aggregate'average of each variable for each activity and each subject was calculated. This compresses the data to just 180 rows.
* Finally the data set war written into a file named [TidyData.txt](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/TidyData.txt).

A detailed description of the final tidy data is included in [CodeBook.md](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/CodeBook.md).