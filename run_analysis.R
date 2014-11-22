library(tidyr)
library(dplyr)

features<-read.table("features.txt");

subtrain <- read.table("train/subject_train.txt");
colnames(subtrain)<-"subject";

xtrain <- read.table("train/X_train.txt");
colnames(xtrain)<-c(t(features[2]));
xtrain<-xtrain[,grepl("mean|std", colnames(xtrain))];

ytrain <- read.table("train/y_train.txt");
colnames(ytrain)<-"activities";
dtrain<-cbind(subtrain,ytrain,xtrain);

subtest <- read.table("test/subject_test.txt");
colnames(subtest)<-"subject";

xtest <- read.table("test/X_test.txt");
colnames(xtest)<-c(t(features[2]));
xtest<-xtest[,grepl("mean|std", colnames(xtest))];

ytest <- read.table("test/y_test.txt");
colnames(ytest)<-"activities";
dtest<-cbind(subtest,ytest,xtest);

merged_data<-rbind(dtrain,dtest);
tmpname<-gsub("\\(\\)","",names(merged_data),);
colnames(merged_data)<-gsub("-",".",tmpname,);

activity_labels<-read.table("activity_labels.txt");
activity<-c(t(activity_labels[2]));
merged_data$activities<-activity[merged_data$activities];
merged_data2<-group_by(merged_data,subject,activities)%>% summarise_each(funs(mean));
tmp<-names(merged_data2);
newname<-c(tmp[1:2],paste("average.of.",tmp[3:length(tmp)],sep = ""));
colnames(merged_data2)<-newname;
finaldata<-merged_data2;
