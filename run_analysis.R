x_test_dataset <- read.table("test/X_test.txt", sep="\n", colClasses=c("character"), 
#                            nrows=numberOfLines,
                             strip.white = F, blank.lines.skip = T)

x_train_dataset <- read.table("train/X_train.txt", sep="\n", colClasses=c("character"),
#                            nrows=numberOfLines,
                             strip.white = F, blank.lines.skip = T)

x_dataset <- rbind(x_test_dataset, x_train_dataset)
x_dataset$id <- seq(1:nrow(x_dataset))

x_dataset$Mean <- sapply(x_dataset$V1, function(data){
  d <- as.numeric(unlist(strsplit(data,"\\s+")))
  mean(d, na.rm=T)
})

x_dataset$StandardDeviation <- sapply(x_dataset$V1, function(data){
  d <- as.numeric(unlist(strsplit(data,"\\s+")))
  sd(d, na.rm=T)
})

y_test_dataset <- read.table("test/Y_test.txt", sep="\n")
y_train_dataset <- read.table("train/Y_train.txt", sep="\n")
y_dataset <- rbind(y_test_dataset, y_train_dataset)
y_dataset$id <- seq(1:nrow(y_dataset))

test_subject <- read.table("test/subject_test.txt", sep="\n",colClasses=c("numeric"))
train_subject <- read.table("train/subject_train.txt", sep="\n", colClasses=c("numeric"))

subject <- rbind(test_subject, train_subject)
subject$id <- seq(1:nrow(subject))

tidyDataset1 <- merge(x_dataset, y_dataset, by="id")
tidyDataset1$ActivityName <- factor(tidyDataset1$V1.y, 
                              levels=c(1,2,3,4,5,6), 
                              labels=c("WALKING","WALKING_UPSTAIRS",
                                       "WALKING_DOWNSTAIRS","SITTING",
                                       "STANDING","LAYING"))

tidyDataset1$V1.x <- NULL
tidyDataset1$V1.y <- NULL
write.table(tidyDataset1, "tidydataset1.txt", sep=";", row.names=F)

