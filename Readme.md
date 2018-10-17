# Getting and Cleaning Data Course Project


## Prerequisites and Assumptions

* The working directory is set to the location of the run_analysis.R script
* Assumes the data has been downloaded and unzipped to a subfolder of the working directory called "UCI HAR Dataset"
* Requires dplyr

## Data
Information on the data repository is available from the UCI machine learningn repository here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data set requried for this analysis can be obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Data Processing and Preparation
The [run_analysis.R](run_analysis.R) script runs the following process on the extracted data
The script runs the following steps

1. loads the feature and activity names and subsets the features to those required(the mean and standard deviation results)
2. for both the test and training data sets, loads the data and adds the subject ids and the activity labels
3. combines the test and training sets into a single data set
4. tidies the naming for the column headings
5. creates a tidy data set of the mean values aggregated by subject and activity
6. writes the tidy dataset to finalData.txt


The resulting code book can be viewed [here](codebook.md)
