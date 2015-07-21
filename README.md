Getting and Cleaning Data Course Project
========================================

Instructions for using the ```run_analysis.R``` script:

* Download and unzip the data from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Save the ```run_analysis.R``` script to a folder that contains the ```UCI HAR Dataset``` folder obtained from the previous step

* In RStudio, set working directory to the folder that contains the ```UCI HAR Dataset``` folder and the ```run_analysis.R``` script

* Execute ```source("run_analysis.R")``` in RStudio

The ```run_analysis.R``` script will then start to clean up the downloaded data. After the script finishes executing, it will generate two output files in the current working directory:

1. ```merged.txt``` -- a tidy data set of merged training and test data sets with selected attributes

2. ```means.txt``` -- a tidy data set of average values for each activity and each subject
