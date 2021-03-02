# Getting-and-Cleaning-Data-Course-Project
# CodeBook.md
# Darwin Nava
# Objective: a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md. 

# https://github.com/darwinnava/Getting-and-Cleaning-Data-Course-Project

Getting and Cleaning Data - Course Project

Modifications
  # Data taken from the UCI Machine Learning repository called
  #    "Human Activity Recognition Using Smartphones Data Set" was modified according to
  #     the R script called run_analysis.R. Datos were modified to achieve requirements of tidy data. 
  # A. Merge the training and the test sets to create one data set.
  # B. Extract only the measurements on the mean and standard deviation for each measurement. 
  # C. Use descriptive activity names to name the activities in the data set
  # D. Appropriately label the data set with descriptive variable names. 
  # E. From the data set in step D, create a second, independent tidy data set with the average 
  #    of each variable for each activity and each subject.
  

Descriptions

Columns:
subject: the ID of the Subject
30 individuals.

activity: the Name of the Activity performed by the subject. 
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

rest of variables names: 

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. ""

Only the measurements on the mean and standard deviation for each measurement were extrated.Note: Extracting columns where the measurements contain mean and standard deviation.

Original names were changed for my tidy data set. 
Note: 
where it says Accelerometer originally said ACC
where it says Gyroscope originally said Gyro

 [1] "subject"                                        "activity"                                      
 [3] "tBodyAccelerometer.mean...X"                    "tBodyAccelerometer.mean...Y"                   
 [5] "tBodyAccelerometer.mean...Z"                    "tGravityAccelerometer.mean...X"                
 [7] "tGravityAccelerometer.mean...Y"                 "tGravityAccelerometer.mean...Z"                
 [9] "tBodyAccelerometerJerk.mean...X"                "tBodyAccelerometerJerk.mean...Y"               
[11] "tBodyAccelerometerJerk.mean...Z"                "tBodyGyroscope.mean...X"                       
[13] "tBodyGyroscope.mean...Y"                        "tBodyGyroscope.mean...Z"                       
[15] "tBodyGyroscopeJerk.mean...X"                    "tBodyGyroscopeJerk.mean...Y"                   
[17] "tBodyGyroscopeJerk.mean...Z"                    "tBodyAccelerometerMag.mean.."                  
[19] "tGravityAccelerometerMag.mean.."                "tBodyAccelerometerJerkMag.mean.."              
[21] "tBodyGyroscopeMag.mean.."                       "tBodyGyroscopeJerkMag.mean.."                  
[23] "fBodyAccelerometer.mean...X"                    "fBodyAccelerometer.mean...Y"                   
[25] "fBodyAccelerometer.mean...Z"                    "fBodyAccelerometer.meanFreq...X"               
[27] "fBodyAccelerometer.meanFreq...Y"                "fBodyAccelerometer.meanFreq...Z"               
[29] "fBodyAccelerometerJerk.mean...X"                "fBodyAccelerometerJerk.mean...Y"               
[31] "fBodyAccelerometerJerk.mean...Z"                "fBodyAccelerometerJerk.meanFreq...X"           
[33] "fBodyAccelerometerJerk.meanFreq...Y"            "fBodyAccelerometerJerk.meanFreq...Z"           
[35] "fBodyGyroscope.mean...X"                        "fBodyGyroscope.mean...Y"                       
[37] "fBodyGyroscope.mean...Z"                        "fBodyGyroscope.meanFreq...X"                   
[39] "fBodyGyroscope.meanFreq...Y"                    "fBodyGyroscope.meanFreq...Z"                   
[41] "fBodyAccelerometerMag.mean.."                   "fBodyAccelerometerMag.meanFreq.."              
[43] "fBodyBodyAccelerometerJerkMag.mean.."           "fBodyBodyAccelerometerJerkMag.meanFreq.."      
[45] "fBodyBodyGyroscopeMag.mean.."                   "fBodyBodyGyroscopeMag.meanFreq.."              
[47] "fBodyBodyGyroscopeJerkMag.mean.."               "fBodyBodyGyroscopeJerkMag.meanFreq.."          
[49] "angle.tBodyAccelerometerMean.gravity."          "angle.tBodyAccelerometerJerkMean..gravityMean."
[51] "angle.tBodyGyroscopeMean.gravityMean."          "angle.tBodyGyroscopeJerkMean.gravityMean."     
[53] "angle.X.gravityMean."                           "angle.Y.gravityMean."                          
[55] "angle.Z.gravityMean."                           "tBodyAccelerometer.std...X"                    
[57] "tBodyAccelerometer.std...Y"                     "tBodyAccelerometer.std...Z"                    
[59] "tGravityAccelerometer.std...X"                  "tGravityAccelerometer.std...Y"                 
[61] "tGravityAccelerometer.std...Z"                  "tBodyAccelerometerJerk.std...X"                
[63] "tBodyAccelerometerJerk.std...Y"                 "tBodyAccelerometerJerk.std...Z"                
[65] "tBodyGyroscope.std...X"                         "tBodyGyroscope.std...Y"                        
[67] "tBodyGyroscope.std...Z"                         "tBodyGyroscopeJerk.std...X"                    
[69] "tBodyGyroscopeJerk.std...Y"                     "tBodyGyroscopeJerk.std...Z"                    
[71] "tBodyAccelerometerMag.std.."                    "tGravityAccelerometerMag.std.."                
[73] "tBodyAccelerometerJerkMag.std.."                "tBodyGyroscopeMag.std.."                       
[75] "tBodyGyroscopeJerkMag.std.."                    "fBodyAccelerometer.std...X"                    
[77] "fBodyAccelerometer.std...Y"                     "fBodyAccelerometer.std...Z"                    
[79] "fBodyAccelerometerJerk.std...X"                 "fBodyAccelerometerJerk.std...Y"                
[81] "fBodyAccelerometerJerk.std...Z"                 "fBodyGyroscope.std...X"                        
[83] "fBodyGyroscope.std...Y"                         "fBodyGyroscope.std...Z"                        
[85] "fBodyAccelerometerMag.std.."                    "fBodyBodyAccelerometerJerkMag.std.."           
[87] "fBodyBodyGyroscopeMag.std.."                    "fBodyBodyGyroscopeJerkMag.std..