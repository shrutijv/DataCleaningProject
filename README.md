==================================================================
Modified Human Activity Recognition Using Smartphones Dataset
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The following data set is modification to original dataset mentioned above. The provided dataset includes following file:

-  ‘README. md’
    - describes what can be found in the files

-  ’CodeBook.md’
    - describes variable description 

- ‘run_analysis.R’
    - actual R code
    - input all the files
    - assigns column name and extract data for mean and std only
    - merge test and training dataset
    - change value able for activity variable
    - generate aggregate for all the variables for all the combinations of subject and activity
    - exports the data in working directory

- ’TidyData.txt’
    - generated tidy dataset
    - dimension 180 rows and 88 veriables

Notes about Tidy Dataset: 
======
- Original variables are normalized and bounded within [-1,1], so features in the file are mean of values between -1 and 1
- Each variable represnts column in the dataset
- Each row represents unique combination of subject and activity


========
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
