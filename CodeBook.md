# Getting and Cleaning Data Course Project Code Book

`tidy_data.txt` represents the processed and cleaned data set that were collected from the accelerometers of Samsung Galaxy S smartphone. 

The source data is obtained from the Human Activity Recognition Using Smartphones Data Set. Full description can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Study Design

Copy of the data is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The files are then unzipped and the following transformations are applied:
1. Train and test sets are merged to create one data set.
	* Data sets are obtained from `X_train.txt` and `X_test.txt` files.
	* Activity labels are obtained from `y_train.txt` and `y_test.txt` files.
	* Subject identifiers are obtained from `subject_train.txt` and `subject_test.txt` files.
	* Features/Variable names are obtained from `features.txt` file.
2. Only measurements on mean and standard deviation for each measurements are extracted.
3. Activities in the data set are renamed to more descriptive activity names. 
	* `activity_labels.txt` file is used to link the class labels with their activity name.
4. Variables in the data set are renamed to more descriptive variable names.
5. From the merged data set, an independent tidy data set is created which contains the average of each variable for each activity and each subject.

Downloading, extraction and transformations are all implemented using `run_analysis.R` R script

## Code Book

Below table describes the fields/variables found on `tidy_data.txt` data set.
Note: Measurements are normalized and bounded within [-1,1].

Index | Field Name | Description
--------- | ----- | -----------
1 | subjectId | An identifier of the subject who carried out the experiment.<br>Possible value is from 1 to 30.
2 | activity | The activity performed by the subject.<br>The activities are: laying, sitting, standing, walking, walking downstairs, walking upstairs
3 | timeDomainBodyAccMeanXAxis | Average of time domain body linear acceleration signal in the X-axis direction
4 | timeDomainBodyAccMeanYAxis | Average of time domain body linear acceleration signal in the Y-axis direction
5 | timeDomainBodyAccMeanZAxis | Average of time domain body linear acceleration signal in the Z-axis direction
6 | timeDomainBodyAccStdXAxis | Standard deviation of time domain body linear acceleration signal in the X-axis direction
7 | timeDomainBodyAccStdYAxis | Standard deviation of time domain body linear acceleration signal in the Y-axis direction
8 | timeDomainBodyAccStdZAxis | Standard deviation of time domain body linear acceleration signal in the Z-axis direction
9 | timeDomainGravityAccMeanXAxis | Average of time domain gravity acceleration signal in the X-axis direction
10 | timeDomainGravityAccMeanYAxis | Average of time domain gravity acceleration signal in the Y-axis direction
11 | timeDomainGravityAccMeanZAxis | Average of time domain gravity acceleration signal in the Z-axis direction
12 | timeDomainGravityAccStdXAxis | Standard deviation of time domain gravity acceleration signal in the X-axis direction
13 | timeDomainGravityAccStdYAxis | Standard deviation of time domain gravity acceleration signal in the Y-axis direction
14 | timeDomainGravityAccStdZAxis | Standard deviation of time domain gravity acceleration signal in the Z-axis direction
15 | timeDomainBodyAccJerkMeanXAxis | Average of time domain body acceleration jerk signal in the X-axis direction
16 | timeDomainBodyAccJerkMeanYAxis | Average of time domain body acceleration jerk signal in the Y-axis direction
17 | timeDomainBodyAccJerkMeanZAxis | Average of time domain body acceleration jerk signal in the Z-axis direction
18 | timeDomainBodyAccJerkStdXAxis | Standard deviation of time domain body acceleration jerk signal in the X-axis direction
19 | timeDomainBodyAccJerkStdYAxis | Standard deviation of time domain body acceleration jerk signal in the Y-axis direction
20 | timeDomainBodyAccJerkStdZAxis | Standard deviation of time domain body lacceleration jerk signal in the Z-axis direction
21 | timeDomainBodyGyroMeanXAxis | Average of time domain body angular velocity signal in the X-axis direction
22 | timeDomainBodyGyroMeanYAxis | Average of time domain body angular velocity signal in the Y-axis direction
23 | timeDomainBodyGyroMeanZAxis | Average of time domain body angular velocity signal in the Z-axis direction
24 | timeDomainBodyGyroStdXAxis | Standard deviation of time domain body angular velocity signal in the X-axis direction
25 | timeDomainBodyGyroStdYAxis | Standard deviation of time domain body angular velocity signal in the Y-axis direction
26 | timeDomainBodyGyroStdZAxis | Standard deviation of time domain body angular velocity signal in the Z-axis direction
27 | timeDomainBodyGyroJerkMeanXAxis | Average of time domain body angular velocity jerk signal in the X-axis direction
28 | timeDomainBodyGyroJerkMeanYAxis | Average of time domain body angular velocity jerk signal in the Y-axis direction
29 | timeDomainBodyGyroJerkMeanZAxis | Average of time domain body angular velocity jerk signal in the Z-axis direction
30 | timeDomainBodyGyroJerkStdXAxis | Standard deviation of time domain body angular velocity jerk signal in the X-axis direction
31 | timeDomainBodyGyroJerkStdYAxis | Standard deviation of time domain body angular velocity jerk signal in the Y-axis direction
32 | timeDomainBodyGyroJerkStdZAxis | Standard deviation of time domain body angular velocity jerk signal in the Z-axis direction
33 | timeDomainBodyAccMagMean | Average of time domain magnitude of body acceleration signal
34 | timeDomainBodyAccMagStd | Standard deviation of time domain magnitude of body acceleration signal
35 | timeDomainGravityAccMagMean | Average of time domain magnitude of gravity acceleration signal
36 | timeDomainGravityAccMagStd | Standard deviation of time domain magnitude of body acceleration signal
37 | timeDomainBodyAccJerkMagMean | Average of time domain magnitude of body acceleration jerk signal
38 | timeDomainBodyAccJerkMagStd | Standard deviation of time domain magnitude of body acceleration jerk signal
39 | timeDomainBodyGyroMagMean | Average of time domain magnitude of body angular velocity signal
40 | timeDomainBodyGyroMagStd | Standard deviation of time domain magnitude of body angular velocity signal
41 | timeDomainBodyGyroJerkMagMean | Average of time domain magnitude of body angular velocity jerk signal
42 | timeDomainBodyGyroJerkMagStd | Standard deviation of time domain magnitude of body angular velocity jerk signal
43 | freqDomainBodyAccMeanXAxis  | Average of frequency domain body linear acceleration signal in the X-axis direction
44 | freqDomainBodyAccMeanYAxis  | Average of frequency domain body linear acceleration signal in the Y-axis direction
45 | freqDomainBodyAccMeanZAxis  | Average of frequency domain body linear acceleration signal in the Z-axis direction
46 | freqDomainBodyAccStdXAxis | Standard deviation of frequency domain body linear acceleration signal in the X-axis direction
47 | freqDomainBodyAccStdYAxis | Standard deviation of frequency domain body linear acceleration signal in the Y-axis direction
48 | freqDomainBodyAccStdZAxis | Standard deviation of frequency domain body linear acceleration signal in the Z-axis direction
49 | freqDomainBodyAccJerkMeanXAxis | Average of frequency domain body linear acceleration jerk signal in the X-axis direction
50 | freqDomainBodyAccJerkMeanYAxis | Average of frequency domain body linear acceleration jerk signal in the Y-axis direction
51 | freqDomainBodyAccJerkMeanZAxis | Average of frequency domain body linear acceleration jerk signal in the Z-axis direction
52 | freqDomainBodyAccJerkStdXAxis | Standard deviation of frequency domain body linear acceleration jerk signal in the X-axis direction
53 | freqDomainBodyAccJerkStdYAxis | Standard deviation of frequency domain body linear acceleration jerk signal in the Y-axis direction
54 | freqDomainBodyAccJerkStdZAxis | Standard deviation of frequency domain body linear acceleration jerk signal in the Z-axis direction
55 | freqDomainBodyGyroMeanXAxis | Average of frequency domain body angular velocity signal in the X-axis direction
56 | freqDomainBodyGyroMeanYAxis | Average of frequency domain body angular velocity signal in the Y-axis direction
57 | freqDomainBodyGyroMeanZAxis | Average of frequency domain body angular velocity signal in the Z-axis direction
58 | freqDomainBodyGyroStdXAxis | Standard deviation of frequency domain body angular velocity signal in the X-axis direction
59 | freqDomainBodyGyroStdYAxis | Standard deviation of frequency domain body angular velocity signal in the Y-axis direction
60 | freqDomainBodyGyroStdZAxis | Standard deviation of frequency domain body angular velocity signal in the Z-axis direction
61 | freqDomainBodyAccMagMean | Average of frequency domain magnitude of body acceleration signal
62 | freqDomainBodyAccMagStd | Standard deviation of frequency domain magnitude of body acceleration signal
63 | freqDomainBodyAccJerkMagMean | Average of frequency domain magnitude of body acceleration jerk signal
64 | freqDomainBodyAccJerkMagStd | Standard deviation of frequency domain magnitude of body acceleration jerk signal
65 | freqDomainBodyGyroMagMean | Average of frequency domain magnitude of body angular velocity signal
66 | freqDomainBodyGyroMagStd | Standard deviation of frequency domain magnitude of body angular velocity signal
67 | freqDomainBodyGyroJerkMagMean | Average of frequency domain magnitude of body angular velocity jerk signal
68 | freqDomainBodyGyroJerkMagStd | Standard deviation of frequency domain magnitude of body angular velocity jerk signal