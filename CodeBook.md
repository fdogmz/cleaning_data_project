Variables description
=================

All variables in the "final_data.txt" data set represent a summary of those contained in the files:

* "UCI HAR Dataset\\train\\X_train"
* "UCI HAR Dataset\\train\\y_train" 
* "UCI HAR Dataset\\test\\X_test"
* "UCI HAR Dataset\\test\\y_test"

These files contain movement data recorded from 30 volunteers performing 6 different activities. The data were generated through a Samsung Galaxy S II fixed on the waist of every volunteer, using its embedded accelerometer and gyroscope. 

In the original experiment a time series of measurements were generated and preprocessed. Several summary statistic were evaluated on these time series (mean, standard deviation, entropy, ...), however, for the present data set, only the ones corresponding to the mean and standard deviation were selected. More information about the study can be found in the file "UCI HAR Dataset\\README.txt" 

In the file "final_data.txt", the original data set were grouped in unique (subject, activity) pairs using the mean as a summary statistic for every original variable. The rest of the variables is listed below:

* mean_of_t-body-acc-mean-x
* mean_of_t-body-acc-mean-y
* mean_of_t-body-acc-mean-z
* mean_of_t-body-acc-std-x
* mean_of_t-body-acc-std-y
* mean_of_t-body-acc-std-z
* mean_of_t-gravity-acc-mean-x
* mean_of_t-gravity-acc-mean-y
* mean_of_t-gravity-acc-mean-z
* mean_of_t-gravity-acc-std-x
* mean_of_t-gravity-acc-std-y
* mean_of_t-gravity-acc-std-z
* mean_of_t-body-acc-jerk-mean-x
* mean_of_t-body-acc-jerk-mean-y
* mean_of_t-body-acc-jerk-mean-z
* mean_of_t-body-acc-jerk-std-x
* mean_of_t-body-acc-jerk-std-y
* mean_of_t-body-acc-jerk-std-z
* mean_of_t-body-gyro-mean-x
* mean_of_t-body-gyro-mean-y
* mean_of_t-body-gyro-mean-z
* mean_of_t-body-gyro-std-x
* mean_of_t-body-gyro-std-y
* mean_of_t-body-gyro-std-z
* mean_of_t-body-gyro-jerk-mean-x
* mean_of_t-body-gyro-jerk-mean-y
* mean_of_t-body-gyro-jerk-mean-z
* mean_of_t-body-gyro-jerk-std-x
* mean_of_t-body-gyro-jerk-std-y
* mean_of_t-body-gyro-jerk-std-z
* mean_of_t-body-acc-mag-mean
* mean_of_t-body-acc-mag-std
* mean_of_t-gravity-acc-mag-mean
* mean_of_t-gravity-acc-mag-std
* mean_of_t-body-acc-jerk-mag-mean
* mean_of_t-body-acc-jerk-mag-std
* mean_of_t-body-gyro-mag-mean
* mean_of_t-body-gyro-mag-std
* mean_of_t-body-gyro-jerk-mag-mean
* mean_of_t-body-gyro-jerk-mag-std
* mean_of_f-body-acc-mean-x
* mean_of_f-body-acc-mean-y
* mean_of_f-body-acc-mean-z
* mean_of_f-body-acc-std-x
* mean_of_f-body-acc-std-y
* mean_of_f-body-acc-std-z
* mean_of_f-body-acc-jerk-mean-x
* mean_of_f-body-acc-jerk-mean-y
* mean_of_f-body-acc-jerk-mean-z
* mean_of_f-body-acc-jerk-std-x
* mean_of_f-body-acc-jerk-std-y
* mean_of_f-body-acc-jerk-std-z
* mean_of_f-body-gyro-mean-x
* mean_of_f-body-gyro-mean-y
* mean_of_f-body-gyro-mean-z
* mean_of_f-body-gyro-std-x
* mean_of_f-body-gyro-std-y
* mean_of_f-body-gyro-std-z
* mean_of_f-body-acc-mag-mean
* mean_of_f-body-acc-mag-std
* mean_of_f-body-body-acc-jerk-mag-mean
* mean_of_f-body-body-acc-jerk-mag-std
* mean_of_f-body-body-gyro-mag-mean
* mean_of_f-body-body-gyro-mag-std
* mean_of_f-body-body-gyro-jerk-mag-mean
* mean_of_f-body-body-gyro-jerk-mag-std

They correspond to the mean values, for every (subject,activity) combination, of the next original variables:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

These variables are described in the "features_info.txt" file.




