#Codebook

The data is based on the data collected as part of the Human Activity Recognition Using Smartphones Dataset. The description of the 'raw' data for this process is largely taken from the features description included with the original dataset.

## Background
30 Participants were asked to perform 6 tasks and data was collected through the sensors on the phone. A fuller description is available in the features_info.txt file included with the dataset.

## Raw Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Raw data: signals

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

### Raw data: estimated values from the signals

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

All but the mean and standard deviation values were discarded

---

## Processed data: 
This dataset aggregates only the mean and standard deviations of the originally captured data and calculates the means for each of these measurements. The aggregrates were calculated for each particapant and activity combination.

The measurement field names are made up as a composite of the following, that describe the measurement: 

* time or frequency
*  body or gravity
*  accelerometer or gyroscope
*  optional: Jerk, Magnitude or JerkMagnitude
*  mean, std or meanFreq
*   optional : X, Y or Z 


|Column | Field         | Data type          | Description       |
|-------| ------------- |:-------------------| -----------------:|
| 1     | subject_id    | numeric     | id assigned to the subject (1-30)|
| 2     | activity      | Factor of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING   |   The activity the subject was taking part in when the measurements where being taken |
|	3	|	timeBodyAccelerometer.mean.X	|	float	|	 mean of the measurement	|	
|	4	|	timeBodyAccelerometer.mean.Y	|	float	|	 mean of the measurement	|	
|	5	|	timeBodyAccelerometer.mean.Z	|	float	|	 mean of the measurement	|	
|	6	|	timeBodyAccelerometer.std.X	|	float	|	 mean of the measurement	|	
|	7	|	timeBodyAccelerometer.std.Y	|	float	|	 mean of the measurement	|	
|	8	|	timeBodyAccelerometer.std.Z	|	float	|	 mean of the measurement	|	
|	9	|	timeGravityAccelerometer.mean.X	|	float	|	 mean of the measurement	|	
|	10	|	timeGravityAccelerometer.mean.Y	|	float	|	 mean of the measurement	|	
|	11	|	timeGravityAccelerometer.mean.Z	|	float	|	 mean of the measurement	|	
|	12	|	timeGravityAccelerometer.std.X	|	float	|	 mean of the measurement	|	
|	13	|	timeGravityAccelerometer.std.Y	|	float	|	 mean of the measurement	|	
|	14	|	timeGravityAccelerometer.std.Z	|	float	|	 mean of the measurement	|	
|	15	|	timeBodyAccelerometerJerk.mean.X	|	float	|	 mean of the measurement	|	
|	16	|	timeBodyAccelerometerJerk.mean.Y	|	float	|	 mean of the measurement	|	
|	17	|	timeBodyAccelerometerJerk.mean.Z	|	float	|	 mean of the measurement	|	
|	18	|	timeBodyAccelerometerJerk.std.X	|	float	|	 mean of the measurement	|	
|	19	|	timeBodyAccelerometerJerk.std.Y	|	float	|	 mean of the measurement	|	
|	20	|	timeBodyAccelerometerJerk.std.Z	|	float	|	 mean of the measurement	|	
|	21	|	timeBodyGyroscope.mean.X	|	float	|	 mean of the measurement	|	
|	22	|	timeBodyGyroscope.mean.Y	|	float	|	 mean of the measurement	|	
|	23	|	timeBodyGyroscope.mean.Z	|	float	|	 mean of the measurement	|	
|	24	|	timeBodyGyroscope.std.X	|	float	|	 mean of the measurement	|	
|	25	|	timeBodyGyroscope.std.Y	|	float	|	 mean of the measurement	|	
|	26	|	timeBodyGyroscope.std.Z	|	float	|	 mean of the measurement	|	
|	27	|	timeBodyGyroscopeJerk.mean.X	|	float	|	 mean of the measurement	|	
|	28	|	timeBodyGyroscopeJerk.mean.Y	|	float	|	 mean of the measurement	|	
|	29	|	timeBodyGyroscopeJerk.mean.Z	|	float	|	 mean of the measurement	|	
|	30	|	timeBodyGyroscopeJerk.std.X	|	float	|	 mean of the measurement	|	
|	31	|	timeBodyGyroscopeJerk.std.Y	|	float	|	 mean of the measurement	|	
|	32	|	timeBodyGyroscopeJerk.std.Z	|	float	|	 mean of the measurement	|	
|	33	|	timeBodyAccelerometerMagnitude.mean	|	float	|	 mean of the measurement	|	
|	34	|	timeBodyAccelerometerMagnitude.std	|	float	|	 mean of the measurement	|	
|	35	|	timeGravityAccelerometerMagnitude.mean	|	float	|	 mean of the measurement	|	
|	36	|	timeGravityAccelerometerMagnitude.std	|	float	|	 mean of the measurement	|	
|	37	|	timeBodyAccelerometerJerkMagnitude.mean	|	float	|	 mean of the measurement	|	
|	38	|	timeBodyAccelerometerJerkMagnitude.std	|	float	|	 mean of the measurement	|	
|	39	|	timeBodyGyroscopeMagnitude.mean	|	float	|	 mean of the measurement	|	
|	40	|	timeBodyGyroscopeMagnitude.std	|	float	|	 mean of the measurement	|	
|	41	|	timeBodyGyroscopeJerkMagnitude.mean	|	float	|	 mean of the measurement	|	
|	42	|	timeBodyGyroscopeJerkMagnitude.std	|	float	|	 mean of the measurement	|	
|	43	|	frequencyBodyAccelerometer.mean.X	|	float	|	 mean of the measurement	|	
|	44	|	frequencyBodyAccelerometer.mean.Y	|	float	|	 mean of the measurement	|	
|	45	|	frequencyBodyAccelerometer.mean.Z	|	float	|	 mean of the measurement	|	
|	46	|	frequencyBodyAccelerometer.std.X	|	float	|	 mean of the measurement	|	
|	47	|	frequencyBodyAccelerometer.std.Y	|	float	|	 mean of the measurement	|	
|	48	|	frequencyBodyAccelerometer.std.Z	|	float	|	 mean of the measurement	|	
|	49	|	frequencyBodyAccelerometer.meanFreq.X	|	float	|	 mean of the measurement	|	
|	50	|	frequencyBodyAccelerometer.meanFreq.Y	|	float	|	 mean of the measurement	|	
|	51	|	frequencyBodyAccelerometer.meanFreq.Z	|	float	|	 mean of the measurement	|	
|	52	|	frequencyBodyAccelerometerJerk.mean.X	|	float	|	 mean of the measurement	|	
|	53	|	frequencyBodyAccelerometerJerk.mean.Y	|	float	|	 mean of the measurement	|	
|	54	|	frequencyBodyAccelerometerJerk.mean.Z	|	float	|	 mean of the measurement	|	
|	55	|	frequencyBodyAccelerometerJerk.std.X	|	float	|	 mean of the measurement	|	
|	56	|	frequencyBodyAccelerometerJerk.std.Y	|	float	|	 mean of the measurement	|	
|	57	|	frequencyBodyAccelerometerJerk.std.Z	|	float	|	 mean of the measurement	|	
|	58	|	frequencyBodyAccelerometerJerk.meanFreq.X	|	float	|	 mean of the measurement	|	
|	59	|	frequencyBodyAccelerometerJerk.meanFreq.Y	|	float	|	 mean of the measurement	|	
|	60	|	frequencyBodyAccelerometerJerk.meanFreq.Z	|	float	|	 mean of the measurement	|	
|	61	|	frequencyBodyGyroscope.mean.X	|	float	|	 mean of the measurement	|	
|	62	|	frequencyBodyGyroscope.mean.Y	|	float	|	 mean of the measurement	|	
|	63	|	frequencyBodyGyroscope.mean.Z	|	float	|	 mean of the measurement	|	
|	64	|	frequencyBodyGyroscope.std.X	|	float	|	 mean of the measurement	|	
|	65	|	frequencyBodyGyroscope.std.Y	|	float	|	 mean of the measurement	|	
|	66	|	frequencyBodyGyroscope.std.Z	|	float	|	 mean of the measurement	|	
|	67	|	frequencyBodyGyroscope.meanFreq.X	|	float	|	 mean of the measurement	|	
|	68	|	frequencyBodyGyroscope.meanFreq.Y	|	float	|	 mean of the measurement	|	
|	69	|	frequencyBodyGyroscope.meanFreq.Z	|	float	|	 mean of the measurement	|	
|	70	|	frequencyBodyAccelerometerMagnitude.mean	|	float	|	 mean of the measurement	|	
|	71	|	frequencyBodyAccelerometerMagnitude.std	|	float	|	 mean of the measurement	|	
|	72	|	frequencyBodyAccelerometerMagnitude.meanFreq	|	float	|	 mean of the measurement	|	
|	73	|	frequencyBodyAccelerometerJerkMagnitude.mean	|	float	|	 mean of the measurement	|	
|	74	|	frequencyBodyAccelerometerJerkMagnitude.std	|	float	|	 mean of the measurement	|	
|	75	|	frequencyBodyAccelerometerJerkMagnitude.meanFreq	|	float	|	 mean of the measurement	|	
|	76	|	frequencyBodyGyroscopeMagnitude.mean	|	float	|	 mean of the measurement	|	
|	77	|	frequencyBodyGyroscopeMagnitude.std	|	float	|	 mean of the measurement	|	
|	78	|	frequencyBodyGyroscopeMagnitude.meanFreq	|	float	|	 mean of the measurement	|	
|	79	|	frequencyBodyGyroscopeJerkMagnitude.mean	|	float	|	 mean of the measurement	|	
|	80	|	frequencyBodyGyroscopeJerkMagnitude.std	|	float	|	 mean of the measurement	|	
|	81	|	frequencyBodyGyroscopeJerkMagnitude.meanFreq	|	float	|	 mean of the measurement	|	