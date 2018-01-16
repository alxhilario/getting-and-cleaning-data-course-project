# install.packages("data.table")
library(data.table)
# install.packages("dplyr")
library(dplyr)


project_dir <- "Getting_and_Cleaning_Data_Course_Project"
if(!dir.exists(project_dir)) {
    dir.create(project_dir)
}

dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file_full_path <- file.path(project_dir, "UCI HAR Dataset.zip")
download.file(dataset_url, file_full_path)
unzip(zipfile = file_full_path, exdir = project_dir)
dataset_dir <- file.path(project_dir, "UCI HAR Dataset")

# load list of variables of each feature vector and
# create another column indicating if the feature is a required measurement 
features <- fread(file.path(dataset_dir, "features.txt"),
                  col.names = "feature",
                  drop = 1,
                  stringsAsFactors = FALSE) %>%
            mutate(required = grepl("(mean|std)\\(", feature))

# rename required features to descriptive variables
variable_names <- features$feature[which(features$required)]
variable_names <- gsub("^t", "timeDomain", variable_names)
variable_names <- gsub("^f", "freqDomain", variable_names)
variable_names <- gsub("mean", "Mean", variable_names)
variable_names <- gsub("std", "Std", variable_names)
variable_names <- gsub("(X|Y|Z)$", "\\1Axis", variable_names)
variable_names <- gsub("[^[:alnum:]]", "", variable_names)

# load activity labels to data table
activity_labels <- fread(file.path(dataset_dir, "activity_labels.txt"),
                  col.names = c("id", "label"),
                  stringsAsFactors = FALSE)
activity_labels$label <- sub("_", " ", tolower(activity_labels$label))

#  function to extract data from the train or test set
extract.data <- function(data_type) {
    data_set_file_path <- file.path(dataset_dir, data_type)
    
    subjects <- fread(file.path(data_set_file_path, 
                                paste("subject_", data_type, ".txt", sep = "")),
                      col.names = "subjectId",
                      stringsAsFactors = FALSE)
    
    data <- fread(file.path(data_set_file_path, 
                            paste("X_", data_type, ".txt", sep = "")),
                  select = which(features$required),
                  col.names = variable_names,
                  stringsAsFactors = FALSE)

    labels <- fread(file.path(data_set_file_path, 
                              paste("y_", data_type, ".txt", sep = "")),
                    col.names = "id",
                    stringsAsFactors = FALSE) %>%
              mutate(activity = activity_labels$label[id], id = NULL)
    
    data <- cbind(subjects, labels, data)
    return(data)
}

# merge train and test set into one data table
merged_data <- rbind(extract.data("train"), 
                     extract.data("test")) %>%
               arrange(subjectId, activity) %>%
               as.data.table

# create tidy data set with the average of each variable for 
# each activity and each subject
tidy_data <- dcast(merged_data, 
                   subjectId + activity ~ ., 
                   fun = mean, 
                   value.var = variable_names)
                   
# clean up the environment and retain just merged_data and tidy_data
rm(activity_labels, dataset_dir, dataset_url, extract.data, features, file_full_path, project_dir, variable_names)