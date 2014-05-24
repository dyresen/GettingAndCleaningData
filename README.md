# _Getting and Cleaning data Course Project_

_This is the Getting and Cleaning data Coursera course project_

## Project Setup

_How do I, as a developer, start working on the project?_ 

1. _Clone repository_
2. _Download data from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip _
3. _Unzip the file downloaded in step2 directly into your cloned repository_
4. _Set your R working directory to your cloned repository_
5. _Run GettingDataAssignment.R and make sure you get a tidy dataset_

## Explenation

### Code Layout

- _All Code is based around three function_
- _ReadAndMergeData() This will read all files from disk and merge it into a data frame._
- _rename() This Will clean up all variable names as describd in the Coursera course for how a tidy dataset should be. It will also add activity names and make sure subject and activity lables comes first in the dataset_
- _crunch This is where the aggregation and calculation is happening_
