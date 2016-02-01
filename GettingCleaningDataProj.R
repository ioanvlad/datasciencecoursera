# Getting and Cleaning Data Course Project
# Copyright Ioan Vlad 2016

zip_URL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
zip_local <- 'raw.zip'

download.file(zip_URL, zip_local)

unzip(zip_local)
