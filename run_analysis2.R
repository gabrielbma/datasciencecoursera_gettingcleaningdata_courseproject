x_test_dataset <- read.table("test/X_test.txt", sep="\n", colClasses=c("character"), 
                             nrows=3,                             
)


x_train_dataset <- read.table("train/X_train.txt", sep="\n", colClasses=c("character"),
                             nrows=numberOfLines,
                             strip.white = F, blank.lines.skip = T)


#temp <- substr(x_test_dataset[1,1], 3, nchar(x_test_dataset$V1)-1)
#x_test_dataset[1,1] <- temp

tidyDataset1 <- data.frame(
	     do.call(rbind,
	     	as.numeric(strsplit(x_test_dataset$V1, split="\\s+"))[[1]]))
