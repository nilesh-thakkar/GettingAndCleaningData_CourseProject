#Code Book for Human Activity Recognition Data

This data set consists of a single file named [TidyData.txt](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/TidyData.txt). This file was created after a set of transformations applied by the R script [run_analysis.R](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/run_analysis.R) on the original raw data. The process to obtained the tidy data set from the raw data is discussed in [README.md](https://github.com/nilesh-thakkar/GettingAndCleaningData_CourseProject/blob/master/README.md).

A full description of the raw data is available at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and the raw data is available here

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A detailed description of the variables in the tidy data set follows:

* Subject         : int 1 2 3...30

    -Unique identifier of the subject under study
    
* Activity        : Factor w/ 6 levels  "WALKING", "WALKING_UPSTAIRS",
                  "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
                  
    -The activities of daily living(ADL) under study
    
* TimeValueBodyAccelerometerMeanXaxis                              : num

    -Mean in Time of Body Acceleration in X direction
    
* TimeValueBodyAccelerometerMeanYaxis                              : num

    -Mean in Time of Body Acceleration in Y direction
    
* TimeValueBodyAccelerometerMeanZaxis                              : num

    -Mean in Time of Body Acceleration in Z direction
    
* TimeValueBodyAccelerometerStandardDeviationXaxis                 : num

    -StandardDeviation in Time of Body Acceleration in X direction
    
* TimeValueBodyAccelerometerStandardDeviationYaxis                 : num

    -StandardDeviation in Time of Body Acceleration in Y direction
    
* TimeValueBodyAccelerometerStandardDeviationZaxis                 : num

    -StandardDeviation in Time of Body Acceleration in Z direction
    
* TimeValueGravityAccelerometerMeanXaxis                           : num

    -Mean in Time of Gravity Acceleration in X direction
    
* TimeValueGravityAccelerometerMeanYaxis                           : num

    -Mean in Time of Gravity Acceleration in Y direction
    
* TimeValueGravityAccelerometerMeanZaxis                           : num

    -Mean in Time of Gravity Acceleration in Z direction
    
* TimeValueGravityAccelerometerStandardDeviationXaxis              : num

    -StandardDeviation in Time of Gravity Acceleration in X direction
    
* TimeValueGravityAccelerometerStandardDeviationYaxis              : num

    -StandardDeviation in Time of Gravity Acceleration in Y direction
    
* TimeValueGravityAccelerometerStandardDeviationZaxis              : num

    -StandardDeviation in Time of Gravity Acceleration in Z direction
    
* TimeValueBodyAccelerometerJerkMeanXaxis                          : num

    -Mean in Time of Body Acceleration Jerk in X direction
    
* TimeValueBodyAccelerometerJerkMeanYaxis                          : num

    -Mean in Time of Body Acceleration Jerk in Y direction
    
* TimeValueBodyAccelerometerJerkMeanZaxis                          : num

    -Mean in Time of Body Acceleration Jerk in Z direction
    
* TimeValueBodyAccelerometerJerkStandardDeviationXaxis             : num

    -StandardDeviation in Time of Body Acceleration Jerk in X direction
    
* TimeValueBodyAccelerometerJerkStandardDeviationYaxis             : num

    -StandardDeviation in Time of Body Acceleration Jerk in Y direction
    
* TimeValueBodyAccelerometerJerkStandardDeviationZaxis             : num

    -StandardDeviation in Time of Body Acceleration Jerk in Z direction
    
* TimeValueBodyGyroscopeMeanXaxis                                  : num

    -Mean in Time of Body Gyroscope Signal in X direction
    
* TimeValueBodyGyroscopeMeanYaxis                                  : num

    -Mean in Time of Body Gyroscope Signal in Y direction
    
* TimeValueBodyGyroscopeMeanZaxis                                  : num

    -Mean in Time of Body Gyroscope Signal in Z direction
    
* TimeValueBodyGyroscopeStandardDeviationXaxis                     : num

    -Standard Deviation in Time of Body Gyroscope Signal in X direction
    
* TimeValueBodyGyroscopeStandardDeviationYaxis                     : num

    -Standard Deviation in Time of Body Gyroscope Signal in Y direction
    
* TimeValueBodyGyroscopeStandardDeviationZaxis                     : num

    -Standard Deviation in Time of Body Gyroscope Signal in Z direction
    
* TimeValueBodyGyroscopeJerkMeanXaxis                              : num

    -Mean in Time of Body Gyroscope Jerk Signal in X direction
    
* TimeValueBodyGyroscopeJerkMeanYaxis                              : num

    -Mean in Time of Body Gyroscope Jerk Signal in Y direction
    
* TimeValueBodyGyroscopeJerkMeanZaxis                              : num

    -Mean in Time of Body Gyroscope Jerk Signal in Z direction
    
* TimeValueBodyGyroscopeJerkStandardDeviationXaxis                 : num

    -Standard Deviation in Time of Body Gyroscope Jerk Signal in X direction
    
* TimeValueBodyGyroscopeJerkStandardDeviationYaxis                 : num

    -Standard Deviation in Time of Body Gyroscope Jerk Signal in Y direction
    
* TimeValueBodyGyroscopeJerkStandardDeviationZaxis                 : num

    -Standard Deviation in Time of Body Gyroscope Jerk Signal in Z direction
    
* TimeValueBodyAccelerometerMagnitudeMean                          : num

    -Mean in Time of Body Acceleration Magnitude
    
* TimeValueBodyAccelerometerMagnitudeStandardDeviation             : num

    -Standard Deviation in Time of Body Acceleration Magnitude
    
* TimeValueGravityAccelerometerMagnitudeMean                       : num

    -Mean in Time of Gravity Acceleration Magnitude
    
* TimeValueGravityAccelerometerMagnitudeStandardDeviation          : num

    -Standard Deviation in Time of Gravity Acceleration Magnitude
    
* TimeValueBodyAccelerometerJerkMagnitudeMean                      : num

    -Mean in Time of Body Acceleration Jerk Magnitude
    
* TimeValueBodyAccelerometerJerkMagnitudeStandardDeviation         : num

    -Standard Deviation in Time of Body Acceleration Jerk Magnitude
    
* TimeValueBodyGyroscopeMagnitudeMean                              : num

    -Mean in Time of Body Gyroscope Signal Magnitude
    
* TimeValueBodyGyroscopeMagnitudeStandardDeviation                 : num

    -Standard Deviation in Time of Body Gyroscope Signal Magnitude
    
* TimeValueBodyGyroscopeJerkMagnitudeMean                          : num

    -Mean in Time of Body Gyroscope Jerk Signal Magnitude
    
* TimeValueBodyGyroscopeJerkMagnitudeStandardDeviation             : num

    -Standard Deviation in Time of Body Gyroscope Jerk Signal Magnitude
    
* FrequencyValueBodyAccelerometerMeanXaxis                         : num

    -Mean in Frequency of Body Acceleration in X direction
    
* FrequencyValueBodyAccelerometerMeanYaxis                         : num

    -Mean in Frequency of Body Acceleration in Y direction
    
* FrequencyValueBodyAccelerometerMeanZaxis                         : num

    -Mean in Frequency of Body Acceleration in Z direction
    
* FrequencyValueBodyAccelerometerStandardDeviationXaxis            : num

    -Standard Deviation in Frequency of Body Acceleration in X direction
    
* FrequencyValueBodyAccelerometerStandardDeviationYaxis            : num

    -Standard Deviation in Frequency of Body Acceleration in Y direction
    
* FrequencyValueBodyAccelerometerStandardDeviationZaxis            : num

    -Standard Deviation in Frequency of Body Acceleration in Z direction
    
* FrequencyValueBodyAccelerometerJerkMeanXaxis                     : num

    -Mean in Frequency of Body Acceleration Jerk in X direction
    
* FrequencyValueBodyAccelerometerJerkMeanYaxis                     : num

    -Mean in Frequency of Body Acceleration Jerk in Y direction
    
* FrequencyValueBodyAccelerometerJerkMeanZaxis                     : num

    -Mean in Frequency of Body Acceleration Jerk in Z direction
    
* FrequencyValueBodyAccelerometerJerkStandardDeviationXaxis        : num

    -Standard Deviation in Frequency of Body Acceleration Jerk in X direction
    
* FrequencyValueBodyAccelerometerJerkStandardDeviationYaxis        : num

    -Standard Deviation in Frequency of Body Acceleration Jerk in Y direction
  
* FrequencyValueBodyAccelerometerJerkStandardDeviationZaxis        : num

    -Standard Deviation in Frequency of Body Acceleration Jerk in Z direction
    
* FrequencyValueBodyGyroscopeMeanXaxis                             : num

    -Mean in Frequency of Body Gyroscope Signal in X direction
    
* FrequencyValueBodyGyroscopeMeanYaxis                             : num

    -Mean in Frequency of Body Gyroscope Signal in Y direction
    
* FrequencyValueBodyGyroscopeMeanZaxis                             : num

    -Mean in Frequency of Body Gyroscope Signal in Z direction
    
* FrequencyValueBodyGyroscopeStandardDeviationXaxis                : num

    -Standard Deviation in Frequency of Body Gyroscope Signal in X direction
    
* FrequencyValueBodyGyroscopeStandardDeviationYaxis                : num

    -Standard Deviation in Frequency of Body Gyroscope Signal in Y direction
    
* FrequencyValueBodyGyroscopeStandardDeviationZaxis                : num

    -Standard Deviation in Frequency of Body Gyroscope Signal in Z direction
    
* FrequencyValueBodyAccelerometerMagnitudeMean                     : num

    -Mean in Frequency of Body Acceleration Magnitude
    
* FrequencyValueBodyAccelerometerMagnitudeStandardDeviation        : num

    -Standard Deviation in Frequency of Body Acceleration Magnitude
    
* FrequencyValueBodyBodyAccelerometerJerkMagnitudeMean             : num

    -Mean in Frequency of Body Acceleration Jerk Magnitude
    
* FrequencyValueBodyBodyAccelerometerJerkMagnitudeStandardDeviation: num

    -Standard Deviation in Frequency of Body Acceleration Jerk Magnitude
    
* FrequencyValueBodyBodyGyroscopeMagnitudeMean                     : num

    -Mean in Frequency of Body Gyroscope Signal Magnitude
    
* FrequencyValueBodyBodyGyroscopeMagnitudeStandardDeviation        : num

    -Standard Deviation in Frequency of Body Gyroscope Signal Magnitude
    
* FrequencyValueBodyBodyGyroscopeJerkMagnitudeMean                 : num

    -Mean in Frequency of Body Gyroscope Jerk Signal Magnitude
    
* FrequencyValueBodyBodyGyroscopeJerkMagnitudeStandardDeviation    : num

    -Standard Deviation in Frequency of Body Gyroscope Jerk Signal Magnitude
    