Data CodeBook - Human Activity Recognition Using Smartphones Data Set 2012

"Activities"
	Describe the activity name in the measurement. 6 levels:
	"WALKING"
	"WALKING_UPSTAIRS"
	"WALKING_DOWNSTAIRS"
	"SITTING"
	"STANDING"
	"LAYING"


"Subject"
	Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


"tBodyAcc.mean...X"
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tBodyAcc.std...X"
"tBodyAcc.std...Y"
"tBodyAcc.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of body motion component of the sensor acceleration signal tAcc-XYZ (noise removed) at X,Y,Z directions, respectively.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Features are normalized and bounded within [-1,1] thus there is no unit.
	

"tGravityAcc.mean...X"
"tGravityAcc.mean...Y"
"tGravityAcc.mean...Z"
"tGravityAcc.std...X"
"tGravityAcc.std...Y"
"tGravityAcc.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of gravitational motion component of the sensor acceleration signal tAcc-XYZ (noise removed) at X,Y,Z directions, respectively.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyAccJerk.mean...X"
"tBodyAccJerk.mean...Y"
"tBodyAccJerk.mean...Z"
"tBodyAccJerk.std...X"
"tBodyAccJerk.std...Y"
"tBodyAccJerk.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of body linear acceleration derived in time to obtain Jerk Signals tBodyAccJerk-XYZ at X,Y,Z directions, respectively. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyGyro.mean...X"
"tBodyGyro.mean...Y"
"tBodyGyro.mean...Z"
"tBodyGyro.std...X"
"tBodyGyro.std...Y"
"tBodyGyro.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of body part data from gyroscope 3-axial signals tGyro-XYZ (noise removed) at X,Y,Z directions, respectively.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyGyroJerk.mean...X"
"tBodyGyroJerk.mean...Y"
"tBodyGyroJerk.mean...Z"
"tBodyGyroJerk.std...X"
"tBodyGyroJerk.std...Y"
"tBodyGyroJerk.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of body angular velocity derived in time to obtain  Jerk Signals tBodyAccJerk-XYZ at X,Y,Z directions, respectively. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyAccMag.mean.."
"tBodyAccMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of the magnitude of the three-dimensional tBodyAcc signals calculated using the Euclidean norm. Features are normalized and bounded within [-1,1] thus there is no unit.


"tGravityAccMag.mean.."
"tGravityAccMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of the magnitude of the three-dimensional tGravityAcc signals calculated using the Euclidean norm. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyAccJerkMag.mean.."
"tBodyAccJerkMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of the magnitude of the three-dimensional tBodyAccJerk signals calculated using the Euclidean norm. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of the magnitude of the three-dimensional tBodyGyro signals calculated using the Euclidean norm. Features are normalized and bounded within [-1,1] thus there is no unit.


"tBodyGyroJerkMag.mean.."
"tBodyGyroJerkMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of the magnitude of the three-dimensional tBodyGyroJerk signals calculated using the Euclidean norm. Features are normalized and bounded within [-1,1] thus there is no unit.


"fBodyAcc.mean...X"
"fBodyAcc.mean...Y"
"fBodyAcc.mean...Z"
"fBodyAcc.std...X"
"fBodyAcc.std...Y"
"fBodyAcc.std...Z"
	 The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied signals producing tBodyAcc on X,Y, Z directions, respectively.


"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y"
"fBodyAccJerk.mean...Z"
"fBodyAccJerk.std...X"
"fBodyAccJerk.std...Y"
"fBodyAccJerk.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied signals producing tBodyAccJerk on X,Y, Z directions, respectively.


"fBodyGyro.mean...X"
"fBodyGyro.mean...Y"
"fBodyGyro.mean...Z"
"fBodyGyro.std...X"
"fBodyGyro.std...Y"
"fBodyGyro.std...Z"
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied signals producing tBodyGyro on X,Y, Z directions, respectively.


"fBodyAccMag.mean.."
"fBodyAccMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied to the magnitude of the three-dimensional tBodyAccMag signals.


"fBodyBodyAccJerkMag.mean.."
"fBodyBodyAccJerkMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied to the magnitude of the three-dimensional tBodyBodyAccJerkMag signals.


"fBodyBodyGyroMag.mean.."
"fBodyBodyGyroMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied to the magnitude of the three-dimensional tBodyBodyGyroMag signals.


"fBodyBodyGyroJerkMag.mean.."
"fBodyBodyGyroJerkMag.std.."
	The average of the following for each activity and each subject: Mean value and Standard deviation of Fast Fourier Transform (FFT) applied to the magnitude of the three-dimensional tBodyBodyGyroJerkMag signals.
