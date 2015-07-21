Getting and Cleaning Data Course Project Code Book
==================================================

This code book describes the variables, data, and transformation performed by the R script ```run_analysis.R``` to clean up the data.

* The original data can be found at:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* The original description of the data can be found at:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

* The R script ```run_analysis.R``` performs the following to clean up the data:

  * Merges the training data ```train/X_train.txt``` and test data ```test/X_test.txt``` to create one data set and stores the result in variable ```X```. The result will be a 10299x561 data frame. This matches the original data description "Number of Instances: 10299, Number of Attributes: 561".

  * Merges the training subject ```train/subject_train.txt``` and test subject ```test/subject_test.txt``` to create one data set and stores the result in variable ```S```. The result will be a 10299x1 data frame which is a set of subject IDs.

  * Merges the training label ```train/y_train.txt``` and test label ```test/y_test.txt``` to create one data set and stores the result in variable ```Y```. The result will be a 10299x1 data frame which is a set of activity IDs.

  * Loads the data file ```features.txt``` into variable ```features```, extracts only the measurements on the mean and standard deviation for each measurement, and stores the result in variable ```indices```, and obtains a data subset with only the corresponding columns. The result is stored in variable ```X```, which will be a 10299x66 data frame, since only 66 out of the 561 attributes are extracted.

  * Loads the data file ```activity_labels.txt``` into variable ```activities```, and puts descriptive activity names to name the activities in the data set.

  * Labels the data set with descriptive activity names, and cleans up the names by converting to lower case, and removing underscores and brackets.

  * Merges the subject IDs, activity names, and the 10299x66 data frame containing the extracted measurements to create one tidy data set. The result is stored in variable ```cleaned```, which will be a 10299x68 data frame.

  * Writes the result to ```merged.txt``` in the current working directory.

  * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. There are 30 subjects and 6 activities, and so the result will have 180 rows. The first column of the result will contain the subject IDs. The second column of the result will contain the activity names. The remaining 66 columns will be the averages for each of the 66 extracted attributes. So the result will be a 180x68 data frame.

  * Writes the result to ```means.txt``` in the current working directory.
