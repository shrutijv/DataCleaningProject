

setwd("/Users/shrutijv/Shruti/Study/DataScience/DataCleaning/Project - UCI HAR Dataset")

# read all the test dataset files
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# read all the training dataset files
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# read other supporting files
features <- read.table("features.txt")
activityLabel <- read.table("activity_labels.txt")

# assign column name and extract columns with string mean/Mean/std 
names(x_test) <- features[, 2]
names(x_train) <- features[, 2]
X_test <- data.frame(x_test[,grep('Mean',names(x_test))], x_test[,grep('mean',names(x_test))],x_test[,grep('std',names(x_test))])
X_train <- data.frame(x_train[,grep('Mean',names(x_train))], x_train[,grep('mean',names(x_train))],x_train[,grep('std',names(x_train))])

# bind all the files for train and test data set and finally merge train and test datasets
train <- data.frame(X_train, activity = y_train[, 1], subject = subject_train[, 1])
test <- data.frame(X_test, activity = y_test[, 1], subject = subject_test[, 1])
data <- rbind(train, test)

# change the value lable for 6 activities
pLoop <- function(v) paste(activityLabel[v, 1],"='", activityLabel[v, 2],"';") 
library(car)
data$activity<- recode(data$activity, paste(sapply(1:6, pLoop),collapse=""))

# create tidy data, which is agregate for all the variables group by activity and subject
dataDDPLY <- aggregate(data[, 1], by = list(data$activity, data$subject), mean)[, c(1,2)]
start <- dim(data)[2]-2
for (i in start:1) {
  avgCol <- aggregate(data[, i], by = list(data$activity, data$subject), mean)[ ,3]
  dataDDPLY <- cbind(avgCol, dataDDPLY)
}
names(dataDDPLY) <- names(data)

# export the tidy data
write.table(dataDDPLY, "TidyData.txt", row.name = FALSE)
