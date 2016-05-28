# Experimental Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Data Variables
## Raw Data Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Variables Output by run_analysis.R

* subject_id
* activity
* timedomainbodyacc_mean_x
* timedomainbodyacc_mean_y
* timedomainbodyacc_mean_z
* timedomainbodyacc_stdev_x
* timedomainbodyacc_stdev_y
* timedomainbodyacc_stdev_z
* timedomaingravityacc_mean_x
* timedomaingravityacc_mean_y
* timedomaingravityacc_mean_z
* timedomaingravityacc_stdev_x
* timedomaingravityacc_stdev_y
* timedomaingravityacc_stdev_z
* timedomainbodyaccjerk_mean_x
* timedomainbodyaccjerk_mean_y
* timedomainbodyaccjerk_mean_z
* timedomainbodyaccjerk_stdev_x
* timedomainbodyaccjerk_stdev_y
* timedomainbodyaccjerk_stdev_z
* timedomainbodygyro_mean_x
* timedomainbodygyro_mean_y
* timedomainbodygyro_mean_z
* timedomainbodygyro_stdev_x
* timedomainbodygyro_stdev_y
* timedomainbodygyro_stdev_z
* timedomainbodygyrojerk_mean_x
* timedomainbodygyrojerk_mean_y
* timedomainbodygyrojerk_mean_z
* timedomainbodygyrojerk_stdev_x
* timedomainbodygyrojerk_stdev_y
* timedomainbodygyrojerk_stdev_z
* timedomainbodyaccmag_mean
* timedomainbodyaccmag_stdev
* timedomaingravityaccmag_mean
* timedomaingravityaccmag_stdev
* timedomainbodyaccjerkmag_mean
* timedomainbodyaccjerkmag_stdev
* timedomainbodygyromag_mean
* timedomainbodygyromag_stdev
* timedomainbodygyrojerkmag_mean
* timedomainbodygyrojerkmag_stdev
* freqdomainbodyacc_mean_x
* freqdomainbodyacc_mean_y
* freqdomainbodyacc_mean_z
* freqdomainbodyacc_stdev_x
* freqdomainbodyacc_stdev_y
* freqdomainbodyacc_stdev_z
* freqdomainbodyaccjerk_mean_x
* freqdomainbodyaccjerk_mean_y
* freqdomainbodyaccjerk_mean_z
* freqdomainbodyaccjerk_stdev_x
* freqdomainbodyaccjerk_stdev_y
* freqdomainbodyaccjerk_stdev_z
* freqdomainbodygyro_mean_x
* freqdomainbodygyro_mean_y
* freqdomainbodygyro_mean_z
* freqdomainbodygyro_stdev_x
* freqdomainbodygyro_stdev_y
* freqdomainbodygyro_stdev_z
* freqdomainbodyaccmag_mean
* freqdomainbodyaccmag_stdev
* freqdomainbodyaccjerkmag_mean
* freqdomainbodyaccjerkmag_stdev
* freqdomainbodygyromag_mean
* freqdomainbodygyromag_stdev
* freqdomainbodygyrojerkmag_mean
* freqdomainbodygyrojerkmag_stdev

Each column shows the mean of its respective measurement across the subject_id and activity.

# How to Run the Code

1. Download the required data sets here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the folder and save to a location of your choice.

3. Run run_analysis, and, if the files are not in your working directory, input the directory where the data is saved.

4. run_analysis will write a .txt file to the input directory with the mean of each mean and standard deviation measurement across every activity and subject.
