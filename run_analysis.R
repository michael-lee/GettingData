# 1. Merge the training and the test sets to create one data set.

X <- rbind(read.table("UCI HAR Dataset/train/X_train.txt"),
           read.table("UCI HAR Dataset/test/X_test.txt"))
S <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt"),
           read.table("UCI HAR Dataset/test/subject_test.txt"))
Y <- rbind(read.table("UCI HAR Dataset/train/y_train.txt"),
           read.table("UCI HAR Dataset/test/y_test.txt"))

# 2. Extract only the measurements on the mean and standard deviation for each
# measurement.

features <- read.table("UCI HAR Dataset/features.txt")
indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, indices]
names(X) <- tolower(gsub("\\(|\\)", "", features[indices, 2]))

# 3. Use descriptive activity names to name the activities in the data set.

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] <- gsub("_", "", tolower(as.character(activities[, 2])))
Y[, 1] <- activities[Y[, 1], 2]
names(Y) <- "activity"

# 4. Appropriately label the data set with descriptive activity names.

names(S) <- "subject"
cleaned <- cbind(S, Y, X)
write.table(cleaned, "merged.txt", row.name = F)

# 5. Create a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

numCols <- dim(cleaned)[2]
numSubjects <- length(unique(S)[, 1])
numActivities = length(activities[, 1])
result <- cleaned[1:(numSubjects * numActivities), ]
row <- 1
for (s in 1:numSubjects) {
  for (a in 1:numActivities) {
    result[row, 1] <- unique(S)[, 1][s]
    result[row, 2] <- activities[a, 2]
    c1 <- cleaned$subject == s
    c2 <- cleaned$activity == activities[a, 2]
    result[row, 3:numCols] <- colMeans(cleaned[c1 & c2, 3:numCols])
    row <- row + 1
  }
}
write.table(result, "means.txt", row.name = F)
