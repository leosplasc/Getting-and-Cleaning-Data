# CodeBook for all_tidy.txt 

The data set that this code book pertains to is located in the `all_tidy.txt` file of this repository.

See the `README.md` file of this repository for background information on this data set.

## Data 

The `all_tidy.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables and the following rows contain the values of these variables.

## Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerMeanX`
	- `timeDomainBodyAccelerometerMeanY`
	- `timeDomainBodyAccelerometerMeanZ`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerStandardDeviationX`
	- `timeDomainBodyAccelerometerStandardDeviationY`
	- `timeDomainBodyAccelerometerStandardDeviationZ`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometerMeanX`
	- `timeDomainGravityAccelerometerMeanY`
	- `timeDomainGravityAccelerometerMeanZ`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometerStandardDeviationX`
	- `timeDomainGravityAccelerometerStandardDeviationY`
	- `timeDomainGravityAccelerometerStandardDeviationZ`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerkMeanX`
	- `timeDomainBodyAccelerometerJerkMeanY`
	- `timeDomainBodyAccelerometerJerkMeanZ`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerkStandardDeviationX`
	- `timeDomainBodyAccelerometerJerkStandardDeviationY`
	- `timeDomainBodyAccelerometerJerkStandardDeviationZ`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeMeanX`
	- `timeDomainBodyGyroscopeMeanY`
	- `timeDomainBodyGyroscopeMeanZ`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeStandardDeviationX`
	- `timeDomainBodyGyroscopeStandardDeviationY`
	- `timeDomainBodyGyroscopeStandardDeviationZ`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerkMeanX`
	- `timeDomainBodyGyroscopeJerkMeanY`
	- `timeDomainBodyGyroscopeJerkMeanZ`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerkStandardDeviationX`
	- `timeDomainBodyGyroscopeJerkStandardDeviationY`
	- `timeDomainBodyGyroscopeJerkStandardDeviationZ`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `timeDomainBodyAccelerometerMagnitudeMean`
	- `timeDomainBodyAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `timeDomainGravityAccelerometerMagnitudeMean`
	- `timeDomainGravityAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `timeDomainBodyAccelerometerJerkMagnitudeMean`
	- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `timeDomainBodyGyroscopeMagnitudeMean`
	- `timeDomainBodyGyroscopeMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `timeDomainBodyGyroscopeJerkMagnitudeMean`
	- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerMeanX`
	- `frequencyDomainBodyAccelerometerMeanY`
	- `frequencyDomainBodyAccelerometerMeanZ`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerStandardDeviationX`
	- `frequencyDomainBodyAccelerometerStandardDeviationY`
	- `frequencyDomainBodyAccelerometerStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerMeanFrequencyZ`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkMeanX`
	- `frequencyDomainBodyAccelerometerJerkMeanY`
	- `frequencyDomainBodyAccelerometerJerkMeanZ`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeMeanX`
	- `frequencyDomainBodyGyroscopeMeanY`
	- `frequencyDomainBodyGyroscopeMeanZ`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeStandardDeviationX`
	- `frequencyDomainBodyGyroscopeStandardDeviationY`
	- `frequencyDomainBodyGyroscopeStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeMeanFrequencyX`
	- `frequencyDomainBodyGyroscopeMeanFrequencyY`
	- `frequencyDomainBodyGyroscopeMeanFrequencyZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `frequencyDomainBodyAccelerometerMagnitudeMean`
	- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `frequencyDomainBodyGyroscopeMagnitudeMean`
	- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformation 

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names.
1. The variable names were replaced with descriptive variable names as shown below:

   - code column in TidyData renamed into activities
   - All Acc in column’s name replaced by Accelerometer
   - All Gyro in column’s name replaced by Gyroscope
   - All BodyBody in column’s name replaced by Body
   - All Mag in column’s name replaced by Magnitude
   - All start with character f in column’s name replaced by Frequency
   - All start with character t in column’s name replaced by Time

1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.














