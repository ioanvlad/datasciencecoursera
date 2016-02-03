Getting and Cleaning Data Course Project Code Book
==================================================

Ioan Vlad, Feb. 2016

This document amends the original UCI HAR codebook provided in files:

- activity_labels.txt
- features_info.txt
- features.txt
- README.txt

that are included in the UCI HAR zip archive. These amendments are necessary in order to describe processed data files UCI_HAR_merged.txt and UCI_HAR_merged_averaged.txt created by running run_analysis.R for the purposes of this class project. 

The first two columns in the processed data files are SubjectID and Activity. The Activity names have been modified from the original activity_labels.txt by removing the space.

The rest of the columns have names that correspond to certain columns in the original features.txt file. The correspondence table can be found below:

- tBodyAccMeanX: tBodyAcc-mean()-X
- tBodyAccMeanY: tBodyAcc-mean()-Y
- tBodyAccMeanZ: tBodyAcc-mean()-Z
- tBodyAccStdX: tBodyAcc-std()-X
- tBodyAccStdY: tBodyAcc-std()-Y
- tBodyAccStdZ: tBodyAcc-std()-Z
- tGravityAccMeanX: tGravityAcc-mean()-X
- tGravityAccMeanY: tGravityAcc-mean()-Y
- tGravityAccMeanZ: tGravityAcc-mean()-Z
- tGravityAccStdX: tGravityAcc-std()-X
- tGravityAccStdY: tGravityAcc-std()-Y
- tGravityAccStdZ: tGravityAcc-std()-Z
- tBodyAccJerkMeanX: tBodyAccJerk-mean()-X
- tBodyAccJerkMeanY: tBodyAccJerk-mean()-Y
- tBodyAccJerkMeanZ: tBodyAccJerk-mean()-Z
- tBodyAccJerkStdX: tBodyAccJerk-std()-X
- tBodyAccJerkStdY: tBodyAccJerk-std()-Y
- tBodyAccJerkStdZ: tBodyAccJerk-std()-Z
- tBodyGyroMeanX: tBodyGyro-mean()-X
- tBodyGyroMeanY: tBodyGyro-mean()-Y
- tBodyGyroMeanZ: tBodyGyro-mean()-Z
- tBodyGyroStdX: tBodyGyro-std()-X
- tBodyGyroStdY: tBodyGyro-std()-Y
- tBodyGyroStdZ: tBodyGyro-std()-Z
- tBodyGyroJerkMeanX: tBodyGyroJerk-mean()-X
- tBodyGyroJerkMeanY: tBodyGyroJerk-mean()-Y
- tBodyGyroJerkMeanZ: tBodyGyroJerk-mean()-Z
- tBodyGyroJerkStdX: tBodyGyroJerk-std()-X
- tBodyGyroJerkStdY: tBodyGyroJerk-std()-Y
- tBodyGyroJerkStdZ: tBodyGyroJerk-std()-Z
- tBodyAccMagMean: tBodyAccMag-mean()
- tBodyAccMagStd: tBodyAccMag-std()
- tGravityAccMagMean: tGravityAccMag-mean()
- tGravityAccMagStd: tGravityAccMag-std()
- tBodyAccJerkMagMean: tBodyAccJerkMag-mean()
- tBodyAccJerkMagStd: tBodyAccJerkMag-std()
- tBodyGyroMagMean: tBodyGyroMag-mean()
- tBodyGyroMagStd: tBodyGyroMag-std()
- tBodyGyroJerkMagMean: tBodyGyroJerkMag-mean()
- tBodyGyroJerkMagStd: tBodyGyroJerkMag-std()
- fBodyAccMeanX: fBodyAcc-mean()-X
- fBodyAccMeanY: fBodyAcc-mean()-Y
- fBodyAccMeanZ: fBodyAcc-mean()-Z
- fBodyAccStdX: fBodyAcc-std()-X
- fBodyAccStdY: fBodyAcc-std()-Y
- fBodyAccStdZ: fBodyAcc-std()-Z
- fBodyAccJerkMeanX: fBodyAccJerk-mean()-X
- fBodyAccJerkMeanY: fBodyAccJerk-mean()-Y
- fBodyAccJerkMeanZ: fBodyAccJerk-mean()-Z
- fBodyAccJerkStdX: fBodyAccJerk-std()-X
- fBodyAccJerkStdY: fBodyAccJerk-std()-Y
- fBodyAccJerkStdZ: fBodyAccJerk-std()-Z
- fBodyGyroMeanX: fBodyGyro-mean()-X
- fBodyGyroMeanY: fBodyGyro-mean()-Y
- fBodyGyroMeanZ: fBodyGyro-mean()-Z
- fBodyGyroStdX: fBodyGyro-std()-X
- fBodyGyroStdY: fBodyGyro-std()-Y
- fBodyGyroStdZ: fBodyGyro-std()-Z
- fBodyAccMagMean: fBodyAccMag-mean()
- fBodyAccMagStd: fBodyAccMag-std()
- fBodyBodyAccJerkMagMean: fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMagStd: fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMagMean: fBodyBodyGyroMag-mean()
- fBodyBodyGyroMagStd: fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMagMean: fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMagStd: fBodyBodyGyroJerkMag-std()
