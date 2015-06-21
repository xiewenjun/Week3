## 

## Read data to R
features = read.table("UCI HAR Dataset/features.txt", header=F)
actLabels = read.table("UCI HAR Dataset/activity_labels.txt", header=F)

## Make reading of X.train faster
tab5rows <- read.table("UCI HAR Dataset/train/X_train.txt",header=F,sep=c(""," "), nrows = 5)
classes <- sapply(tab5rows, class)

X.train = read.table("UCI HAR Dataset/train/X_train.txt",header=F,sep=c(""," "),colClasses = classes)
y.train = read.table("UCI HAR Dataset/train/y_train.txt",header=F)
subject.train = read.table("UCI HAR Dataset/train/subject_train.txt",header=F)

## Label columns and merge with activity and subject info
labelData=X.train
names(labelData)=as.character(features[,2])
labelData$Activities=y.train[,1]
labelData$Subject=subject.train[,1]

X.test = read.table("UCI HAR Dataset/test/X_test.txt",header=F,sep=c(""," "),colClasses = classes) 
y.test = read.table("UCI HAR Dataset/test/y_test.txt",header=F)
subject.test = read.table("UCI HAR Dataset/test/subject_test.txt",header=F)

## Merges the training and the test sets to create one data set.
temp = cbind(X.test,y.test[,1],subject.test[,1])
names(temp) = names(labelData)
mergeData = rbind(labelData,temp)

## Substitute column names of dataset with valid column names
valid_column_names = make.names(names=names(mergeData), unique=TRUE, allow_ = TRUE)
names(mergeData) = valid_column_names

## Extracts measurements on mean and standard deviation for each measurement
library(dplyr)
selectData = select(mergeData,Activities,Subject,matches("mean..|std..",ignore.case=F))
selectData = select(selectData,-matches("meanFreq"))

## Uses descriptive activity names to name the activities in the data set
tags = factor(selectData$Activities, labels=as.character(actLabels[, 2]))
selectData = mutate(selectData,Activities=tags)

## Appropriately labels the data set with descriptive variable names

## creates a second, independent tidy data set with the average of each variable for each activity and each subject
groupData = selectData %>% group_by(Activities,Subject) %>% summarise_each(funs(mean))

## Write data to file
write.table(groupData,"Result.txt",row.name=FALSE)