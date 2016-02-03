Getting and Cleaning Data Course Project
========================================

This project cleans and processes data collected from the accelerometers from the Samsung Galaxy S smartphone. Full details about this dataset can be found on the [UCI Machine Learning website](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The [run_analysis.R](https://github.com/ioanvlad/datasciencecoursera/blob/master/run_analysis.R) script provided with this submission performs the following actions:

- downloads the data
- unzips it
- merges the training and the test datasets
- selects only the features with mean and standard deviation in the name
- affixes the appropriate tidified labels
- writes the merged data to file UCI_HAR_merged.txt
- averages by user and activity and writes the final result to file UCI_HAR_merged_averaged.txt
