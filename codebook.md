
# _Codebook_

This is a tidy dataset based on the Human Activity Recognition Using Smartphones study. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


These are the variables in the dataset. The number inside [] will map to the column number in the dataset. All of these variables
consist of the average of each variable for each activity and each subject in the original data. The coulmn named subject is 
mapped to the person doing the activity in the lables column. These variable names are all lower cased and edited to match the styleguide given in the coursera course. All variables that are part of movement have x, y and z in the end of the name, to show what axis they belong to. 

Original data for this study can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[1] "subject"                                                           
[2] "lables"                                                            
[3] "timeseriesbodyacceleromatermeanx"                                  
[4] "timeseriesbodyacceleromatermeany"                                  
[5] "timeseriesbodyacceleromatermeanz"                                  
[6] "timeseriesbodyacceleromaterstandarddeviationx"                     
[7] "timeseriesbodyacceleromaterstandarddeviationy"                     
[8] "timeseriesbodyacceleromaterstandarddeviationz"                     
[9] "timeseriesgravityacceleromatermeanx"                               
[10] "timeseriesgravityacceleromatermeany"                               
[11] "timeseriesgravityacceleromatermeanz"                               
[12] "timeseriesgravityacceleromaterstandarddeviationx"                  
[13] "timeseriesgravityacceleromaterstandarddeviationy"                  
[14] "timeseriesgravityacceleromaterstandarddeviationz"                  
[15] "timeseriesbodyacceleromaterjerkmeanx"                              
[16] "timeseriesbodyacceleromaterjerkmeany"                              
[17] "timeseriesbodyacceleromaterjerkmeanz"                              
[18] "timeseriesbodyacceleromaterjerkstandarddeviationx"                 
[19] "timeseriesbodyacceleromaterjerkstandarddeviationy"                 
[20] "timeseriesbodyacceleromaterjerkstandarddeviationz"                 
[21] "timeseriesbodygyromeanx"                                           
[22] "timeseriesbodygyromeany"                                           
[23] "timeseriesbodygyromeanz"                                           
[24] "timeseriesbodygyrostandarddeviationx"                              
[25] "timeseriesbodygyrostandarddeviationy"                              
[26] "timeseriesbodygyrostandarddeviationz"                              
[27] "timeseriesbodygyrojerkmeanx"                                       
[28] "timeseriesbodygyrojerkmeany"                                       
[29] "timeseriesbodygyrojerkmeanz"                                       
[30] "timeseriesbodygyrojerkstandarddeviationx"                          
[31] "timeseriesbodygyrojerkstandarddeviationy"                          
[32] "timeseriesbodygyrojerkstandarddeviationz"                          
[33] "timeseriesbodyacceleromatermagnitudemean"                          
[34] "timeseriesbodyacceleromatermagnitudestandarddeviation"             
[35] "timeseriesgravityacceleromatermagnitudemean"                       
[36] "timeseriesgravityacceleromatermagnitudestandarddeviation"          
[37] "timeseriesbodyacceleromaterjerkmagnitudemean"                      
[38] "timeseriesbodyacceleromaterjerkmagnitudestandarddeviation"         
[39] "timeseriesbodygyromagnitudemean"                                   
[40] "timeseriesbodygyromagnitudestandarddeviation"                      
[41] "timeseriesbodygyrojerkmagnitudemean"                               
[42] "timeseriesbodygyrojerkmagnitudestandarddeviation"                  
[43] "frequencydomainbodyacceleromatermeanx"                             
[44] "frequencydomainbodyacceleromatermeany"                             
[45] "frequencydomainbodyacceleromatermeanz"                             
[46] "frequencydomainbodyacceleromaterstandarddeviationx"                
[47] "frequencydomainbodyacceleromaterstandarddeviationy"                
[48] "frequencydomainbodyacceleromaterstandarddeviationz"                
[49] "frequencydomainbodyacceleromatermeanfreqx"                         
[50] "frequencydomainbodyacceleromatermeanfreqy"                         
[51] "frequencydomainbodyacceleromatermeanfreqz"                         
[52] "frequencydomainbodyacceleromaterjerkmeanx"                         
[53] "frequencydomainbodyacceleromaterjerkmeany"                         
[54] "frequencydomainbodyacceleromaterjerkmeanz"                         
[55] "frequencydomainbodyacceleromaterjerkstandarddeviationx"            
[56] "frequencydomainbodyacceleromaterjerkstandarddeviationy"            
[57] "frequencydomainbodyacceleromaterjerkstandarddeviationz"            
[58] "frequencydomainbodyacceleromaterjerkmeanfreqx"                     
[59] "frequencydomainbodyacceleromaterjerkmeanfreqy"                     
[60] "frequencydomainbodyacceleromaterjerkmeanfreqz"                     
[61] "frequencydomainbodygyromeanx"                                      
[62] "frequencydomainbodygyromeany"                                      
[63] "frequencydomainbodygyromeanz"                                      
[64] "frequencydomainbodygyrostandarddeviationx"                         
[65] "frequencydomainbodygyrostandarddeviationy"                         
[66] "frequencydomainbodygyrostandarddeviationz"                         
[67] "frequencydomainbodygyromeanfreqx"                                  
[68] "frequencydomainbodygyromeanfreqy"                                  
[69] "frequencydomainbodygyromeanfreqz"                                  
[70] "frequencydomainbodyacceleromatermagnitudemean"                     
[71] "frequencydomainbodyacceleromatermagnitudestandarddeviation"        
[72] "frequencydomainbodyacceleromatermagnitudemeanfreq"                 
[73] "frequencydomainbodybodyacceleromaterjerkmagnitudemean"             
[74] "frequencydomainbodybodyacceleromaterjerkmagnitudestandarddeviation"
[75] "frequencydomainbodybodyacceleromaterjerkmagnitudemeanfreq"         
[76] "frequencydomainbodybodygyromagnitudemean"                          
[77] "frequencydomainbodybodygyromagnitudestandarddeviation"             
[78] "frequencydomainbodybodygyromagnitudemeanfreq"                      
[79] "frequencydomainbodybodygyrojerkmagnitudemean"                      
[80] "frequencydomainbodybodygyrojerkmagnitudestandarddeviation"         
[81] "frequencydomainbodybodygyrojerkmagnitudemeanfreq"                  
[82] "angletbodyacceleromatermeangravity"                                
[83] "angletbodyacceleromaterjerkmeangravitymean"                        
[84] "angletbodygyromeangravitymean"                                     
[85] "angletbodygyrojerkmeangravitymean"                                 
[86] "anglexgravitymean"                                                 
[87] "angleygravitymean"                                                 
[88] "anglezgravitymean"                                
