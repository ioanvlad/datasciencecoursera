# Getting and Cleaning Data Course Project
# Ioan Vlad, Feb. 2016

library(data.table)

# Download and prepare file

zip_URL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
zip_local <- 'raw.zip'

download.file(zip_URL, zip_local)
unzip(zip_local)

# Directory names

dir.data <- "UCI HAR Dataset"
dir.test  <- file.path(dir.data, "test" )
dir.train <- file.path(dir.data, "train")

# Read and merge data, then delete unmerged data to save memory

subject.test  <- read.table(file.path(dir.test , "subject_test.txt"  ))
subject.train <- read.table(file.path(dir.train, "subject_train.txt"))
subject.merge <- rbind(subject.test, subject.train)
names(subject.merge) <- "SubjectID"
rm(subject.test, subject.train)

X.test  <- read.table(file.path(dir.test , "X_test.txt" ))
X.train <- read.table(file.path(dir.train, "X_train.txt"))
X.merge <- rbind(X.test, X.train)
rm(X.test, X.train)

y.test  <- read.table(file.path(dir.test , "y_test.txt" ))
y.train <- read.table(file.path(dir.train, "y_train.txt"))
y.merge <- rbind(y.test, y.train)
names(y.merge) = "ActivityID"
rm(y.test, y.train)

# Read labels and features

activity.labels <- read.table(file.path(dir.data, "activity_labels.txt"),
                              col.names=c("ActivityID", "ActivityLabel"))

features        <- read.table(file.path(dir.data, "features.txt"),
                              col.names=c("FeatureID", "FeatureLabel"))

# Select only needed columns of X

featurePositions    <- grep("-mean\\(\\)|-std\\(\\)", features$FeatureLabel)
featuresWithStdMean <- features$FeatureLabel[featurePositions]
X.merge <- X.merge[, featurePositions]
names(X.merge) <- gsub("\\(|\\)", "", featuresWithStdMean)
names(X.merge) <- gsub("-mean-", "Mean", names(X.merge))
names(X.merge) <- gsub("-std-" , "Std" , names(X.merge))
names(X.merge) <- gsub("-mean" , "Mean", names(X.merge))
names(X.merge) <- gsub("-std"  , "Std" , names(X.merge))

# Tidy up labels

activity.labels$ActivityLabel <- gsub("_", "", 
                                 as.character(activity.labels$ActivityLabel))
Activity <- merge(y.merge, activity.labels, by="ActivityID")$ActivityLabel

# Final merge

final.merged <- cbind(subject.merge, Activity, X.merge)
write.table(final.merged, "UCI_HAR_merged.txt", row.names=FALSE)

# Averaging and sorting by subject ID

final <- data.table(final.merged)
final.averaged <- final[, lapply(.SD, mean), by=c("SubjectID", "Activity")]
final.avgsort  <- final.averaged[order(SubjectID, Activity), ]
write.table(final.averaged, "UCI_HAR_merged_averaged.txt", row.names=FALSE)

# Raw material for codebook:
code.raw <- cbind(names(X.merge),as.character(featuresWithStdMean))
write.table(code.raw, "UCI_HAR_rawcode.txt", sep=":", row.names=FALSE, col.names=FALSE)
