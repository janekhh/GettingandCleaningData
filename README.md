
Peer Assessments for Getting and Cleaning Data Course Project

The script run_analysis.R creates the tidy data set from the data collected from the accelerometers from the Samsung Galaxy S smartphone: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

run_analysis.R:


1.  merges the training and the test data sets to one data set
train/subject_train.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30


  * train/X_train.txt - Training set
  * train/y_train.txt - Training labels
  * test/subject_test.txt - subject for test set
  * test/X_test.txt - Test set
  * test/y_test.txt - Test labels


2.  select data of the measurements on the mean and standard deviation
3.  Labels activity names 
4.  Labels variable names
5.  Calculate the average of each variable for each activity and each subject
6.  store the output data set as "finaldata"


