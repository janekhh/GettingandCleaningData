Code Book for subset of Human Activity Recognition Using Smartphones Dataset
======================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universitŕ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The orginal dataset includes the following files:
=========================================

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

License:
========

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



The orginal data set were modified as follows:
=========================================

1.  merges the training and the test data sets to one data set


  * train/subject_train.txt 
  * train/X_train.txt - Training set
  * train/y_train.txt - Training labels
  * test/subject_test.txt - subject for test set
  * test/X_test.txt - Test set
  * test/y_test.txt - Test labels


2.  select data of the measurements on the mean and standard deviation
3.  Labels names - taken from activity_labels.txt (numeric labels has been replaced by character values)
4.  Labels variable names
5.  Calculate the average of each variable for each activity and each subject
6.  store the output data set as "finaldata"


The finaldata dataset includes the variables:
=========================================
 "subject"                                  "activities"                              
 "average.of.tBodyAcc.mean.X"               "average.of.tBodyAcc.mean.Y"              
 "average.of.tBodyAcc.mean.Z"               "average.of.tBodyAcc.std.X"               
 "average.of.tBodyAcc.std.Y"                "average.of.tBodyAcc.std.Z"               
 "average.of.tGravityAcc.mean.X"            "average.of.tGravityAcc.mean.Y"           
 "average.of.tGravityAcc.mean.Z"            "average.of.tGravityAcc.std.X"            
 "average.of.tGravityAcc.std.Y"             "average.of.tGravityAcc.std.Z"            
 "average.of.tBodyAccJerk.mean.X"           "average.of.tBodyAccJerk.mean.Y"          
 "average.of.tBodyAccJerk.mean.Z"           "average.of.tBodyAccJerk.std.X"           
 "average.of.tBodyAccJerk.std.Y"            "average.of.tBodyAccJerk.std.Z"           
 "average.of.tBodyGyro.mean.X"              "average.of.tBodyGyro.mean.Y"             
 "average.of.tBodyGyro.mean.Z"              "average.of.tBodyGyro.std.X"              
 "average.of.tBodyGyro.std.Y"               "average.of.tBodyGyro.std.Z"              
 "average.of.tBodyGyroJerk.mean.X"          "average.of.tBodyGyroJerk.mean.Y"         
 "average.of.tBodyGyroJerk.mean.Z"          "average.of.tBodyGyroJerk.std.X"          
 "average.of.tBodyGyroJerk.std.Y"           "average.of.tBodyGyroJerk.std.Z"          
 "average.of.tBodyAccMag.mean"              "average.of.tBodyAccMag.std"              
 "average.of.tGravityAccMag.mean"           "average.of.tGravityAccMag.std"           
 "average.of.tBodyAccJerkMag.mean"          "average.of.tBodyAccJerkMag.std"          
 "average.of.tBodyGyroMag.mean"             "average.of.tBodyGyroMag.std"             
 "average.of.tBodyGyroJerkMag.mean"         "average.of.tBodyGyroJerkMag.std"         
 "average.of.fBodyAcc.mean.X"               "average.of.fBodyAcc.mean.Y"              
 "average.of.fBodyAcc.mean.Z"               "average.of.fBodyAcc.std.X"               
 "average.of.fBodyAcc.std.Y"                "average.of.fBodyAcc.std.Z"               
 "average.of.fBodyAcc.meanFreq.X"           "average.of.fBodyAcc.meanFreq.Y"          
 "average.of.fBodyAcc.meanFreq.Z"           "average.of.fBodyAccJerk.mean.X"          
 "average.of.fBodyAccJerk.mean.Y"           "average.of.fBodyAccJerk.mean.Z"          
 "average.of.fBodyAccJerk.std.X"            "average.of.fBodyAccJerk.std.Y"           
 "average.of.fBodyAccJerk.std.Z"            "average.of.fBodyAccJerk.meanFreq.X"      
 "average.of.fBodyAccJerk.meanFreq.Y"       "average.of.fBodyAccJerk.meanFreq.Z"      
 "average.of.fBodyGyro.mean.X"              "average.of.fBodyGyro.mean.Y"             
 "average.of.fBodyGyro.mean.Z"              "average.of.fBodyGyro.std.X"              
 "average.of.fBodyGyro.std.Y"               "average.of.fBodyGyro.std.Z"              
 "average.of.fBodyGyro.meanFreq.X"          "average.of.fBodyGyro.meanFreq.Y"         
 "average.of.fBodyGyro.meanFreq.Z"          "average.of.fBodyAccMag.mean"             
 "average.of.fBodyAccMag.std"               "average.of.fBodyAccMag.meanFreq"         
 "average.of.fBodyBodyAccJerkMag.mean"      "average.of.fBodyBodyAccJerkMag.std"      
 "average.of.fBodyBodyAccJerkMag.meanFreq"  "average.of.fBodyBodyGyroMag.mean"        
 "average.of.fBodyBodyGyroMag.std"          "average.of.fBodyBodyGyroMag.meanFreq"    
 "average.of.fBodyBodyGyroJerkMag.mean"     "average.of.fBodyBodyGyroJerkMag.std"     
 "average.of.fBodyBodyGyroJerkMag.meanFreq"
