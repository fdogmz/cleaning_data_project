# cleaning_data

This repo contains different files for the evaluation of the course Getting and Cleaning Data.

The goal of the project was to create a table summarizing the data generated in the study described in

http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/.  

The data set was obtained through Coursera: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

and is saved in the "UCI HAR Dataset" folder.

In order to generate the final table, the script "run_analysis.R" should be executed. The process for the generation of the final table is described below. 

* First the training and test data sets were merged (these files can be found at "UCI HAR Dataset/train" and "UCI HAR Dataset/test" espectively).
* The names of the original variables were modified removing innecesary characters (some numbers, spaces, parenthesis,...).
* A subset of the original variables were selected considering only measurements summarizing the mean and standard deviation.
* A factors column identifiying the subjects was added to the data set as well as a column identifying the correspondig activity (the original identifying numbers were transformed to factors with descriptive names).
* The final table was constructed grouping the subjects and activities and evaluating the mean of every variable for every group.
* The table was saved in the file "final_data.txt"

The next list describes some of the files in this repo:

1. "final_data.txt" contains the final table.
2. "CodeBook.md" describes the attributes of the final table
3. "run_analysis.R" is he script used to generate the final table.
4. "UCI HAR Dataset\\features_info.txt" describes the attributes of the original data set.
5. "UCI HAR Dataset\\README.txt" contains informatin about the original study.












