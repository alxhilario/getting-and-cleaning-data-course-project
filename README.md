# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data that can be used for later analysis.
The source data for this project is obtained from the Human Activity Recognition Using Smartphones Data Set. Full description can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

This repository contains the required files for the course project:
* `README.md` - contains the overview of the project.
* `run_analysis.R` - R script used to download, extract and transform the source data.
* `tidy_data.txt` - contains the processed and cleaned data set.
* `CodeBook.md` - describes the variables, the data, and transformations applied to arrive with the tidy data.

## Creating the tidy data set

The following procedure can be done to recreate the `tidy_data.txt` data set using `run_analysis.R` script in RStudio:

* Clone this repository to get a copy of  `run_analysis.R` script.
* Make sure `data.table` and `dplyr` packages are installed. Packages can be installed by running `install.packages("data.table")` and `install.packages("dplyr")`.
* Set the working directory where `run_analysis.R` script is saved.
* Run `source("run_analysis.R")`. `tidy_data` data.table object will then be available in the environment.
* Write the data set to a text file using `write.table()` with `row.name = FALSE` and `quote = FALSE` arguments. E.g.: `write.table(tidy_data, "tidy_data.txt", row.names = FALSE, quote = FALSE)`