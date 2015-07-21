Getting and Cleaning Data Course Project
========================================

Instructions for using the run_analysis.R script:

* Download and unzip the data from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Save the run_analysis.R script to a folder that contains the "UCI HAR Dataset" folder obtained from the previous step

* In RStudio, set working directory to the folder that contains the "UCI HAR Dataset" folder and the run_analysis.R script

* Execute ```source("run_analysis.R")``` in RStudio

* Execute ```data <- read.table("means.txt")``` to read the result file. The result data will be 180 rows x 68 columns.
