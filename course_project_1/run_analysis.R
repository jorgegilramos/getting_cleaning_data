###############################################################################
# 
# Author: Ricardo Jorge Gil Ramos
#
###############################################################################

library(httr)
library(plyr)

# Set working directory and data file
setwd("/home/user/getting_cleaning_data/course_project_1")

# Download data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_file <- "UCI_HAR_Dataset.zip"

# Download file if it is not in the directory 
if (!file.exists(data_file)) {
	cat("Downloading", data_file, "at", getwd(), "...\n")
	download.file(url, data_file, method = "curl")
}

# Create results folder
results_folder <- "results"
if (!file.exists(results_folder)) {
  cat("Creating results folder at", paste(getwd(), "/", results_folder, sep = ""), "...\n")
  dir.create(results_folder)
}

# Unzip file if the directory don't exist (it is also packed in the zip file)
data_folder <- "UCI HAR Dataset"
if (!file.exists(data_folder)) {
	cat("Unziping file", file, "at", paste(getwd(), "/", data_folder, sep = ""), "...\n")
	unzip(file, list = FALSE, overwrite = TRUE)
} 

# Function to extract from a txt file its data.frame
get_dataframe_from_file <- function (filename, column_names) {
  file_path <- paste(data_folder, filename, sep = "/")
  cat("Extracting dataframe from", filename, "...\n")
	data <- data.frame()
  data <- read.table(file_path, sep = "", stringsAsFactors = FALSE, col.names = column_names)
	data
}

# Extract features.txt
features <- get_dataframe_from_file("features.txt", c("id", "column_names"))

# Read the data from the named dataset (depends on the variable features, that has to be readed before).
get_data <- function(dataset_name) {
	cat("Getting data from", dataset_name, "...\n")
  
  filename <- paste(dataset_name, "/", "subject_", dataset_name, ".txt", sep = "")
	subject_data <- get_dataframe_from_file(filename, "id")
  
  filename <- paste(dataset_name, "/", "y_", dataset_name, ".txt", sep = "")
	y_data <- get_dataframe_from_file(filename, "activity")
	
  filename <- paste(dataset_name, "/", "X_", dataset_name, ".txt", sep = "")
  X_data <- get_dataframe_from_file(filename, features$column_names)
  
	data <- cbind(subject_data, y_data, X_data)
	data
}

# Write data in results_folder
write_data <- function (data, filename) {
  file_path <- paste(results_folder, "/", filename, sep="")
  cat("Writing file", file_path, '...\n')
  write.table(data, file_path, row.name = FALSE)
}

# Get test and train data
test <- get_data("test")
train <- get_data("train")

###############################################################################
# Question 1: Merges the training and the test sets to create one data set.

data <- rbind(train, test)


###############################################################################
# Question 2: Extracts only the measurements on the mean and standard deviation for each measurement.

columns <- c(1, 2, grep("std", colnames(data)), grep("mean", colnames(data)))
df_mean_and_std <- data[, columns]


###############################################################################
# Question 3: Uses descriptive activity names to name the activities in the data set.

activity_labels <- get_dataframe_from_file("activity_labels.txt", c("id", "description"))


###############################################################################
# Question 4: Appropriately labels the data set with descriptive variable names. 

data$activity <- factor(data$activity, levels = activity_labels$id, labels = activity_labels$description)


###############################################################################
# Question 5: Creates a second, independent tidy data set with the average of
# each variable for each activity and each subject.

# ddply help us applying a custom function
df_tidy <- ddply(df_mean_and_std, .(id, activity), .fun = function(x) { colMeans(x[, -c(1:2)]) })

# Change column names
colnames(df_tidy)[-c(1:2)] <- paste("colmean_", colnames(df_tidy)[-c(1:2)], sep = "")

# Write tidy data in a file
write_data(df_tidy, "df_tidy.txt")
