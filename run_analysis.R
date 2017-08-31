#start setting the current directory
#setwd("~\\GettingCleaningData\\Week4")

x_test<-read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test<-read.table("UCI HAR Dataset\\test\\y_test.txt")
x_train<-read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train<-read.table("UCI HAR Dataset\\train\\y_train.txt")

#######################################################
#loads variable names
f <- file("UCI HAR Dataset\\features.txt",open="r")
lns<-readLines(f)
close(f)

#cleans variable names
lns <- sub("^[0-9]+ +","",lns)
lns <- gsub("\\(\\)","",lns)
lns <- gsub(",","-",lns)
names(x_test)<-lns
names(x_train)<-lns

#####################################
#merges the data sets and selects variables corresponding to mean and std statistics
data<-rbind(x_train,x_test)

sel<-grep("(-mean-|-std-)|(-mean$|-std$)",names(data),value=TRUE)
data<-data[,sel]
names(data)

####################################
#identifies activities with descriptive labels
names(y_test)<-c("activity")
names(y_train)<-c("activity")

y_train$activity<-factor(y_train$activity)
y_test$activity<-factor(y_test$activity)

f <- file("UCI HAR Dataset\\activity_labels.txt",open="r")
lns<-readLines(f)
close(f)
labs<-gsub("^[1-6] ","",lns)
labs<-tolower(labs)

levels(y_train$activity)<-labs
levels(y_test$activity)<-labs

y<-rbind(y_train,y_test)

##############################################
#reads subjects information
f <- file("UCI HAR Dataset\\train\\subject_train.txt",open="r")
lns<-readLines(f)
close(f)
train_subjects<-lns

f <- file("UCI HAR Dataset\\test\\subject_test.txt",open="r")
lns<-readLines(f)
close(f)
test_subjects<-lns

subjects<-c(train_subjects,test_subjects)
subjects<-as.factor(subjects)

#######################################
#adding subject and activity info and more cleaning on variable names

d<-cbind(subjects,y,data) 
names(d)[1]<-"subject"

nms <- names(d)
for(l in LETTERS){
        nms <- gsub(l,paste0("-",tolower(l)),nms)
}
nms <- gsub("--","-",nms)
names(d)<-nms

#######################################
# split and summary for the final data set
library(dplyr)
r <- (d %>% group_by(subject,activity) %>% summarise_all(mean))
nr <- names(r)
nrt<-paste0("mean_of_",nr[3:length(nr)])
nr<-c(nr[1:2],nrt)
names(r)<-nr
write.table(r,"final_data.txt",row.name = F)