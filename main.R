# Assignment 2 Project for Course BAN6420 (Programming in Python and R)
# Task 0 : Use R to unzip the folder created in step 5 and display the data.

# Load the needed packages
library(utils)

# Task 0 : Use R to unzip the folder created in step 5 and display the data.

tryCatch({
  
    # Set working directory to point the project directory where the project is cloned.
    setwd("/home/onyedikachi/Desktop/Nexford/courses/Data Analytics Courses/BAN6420 Python and R Programming/Module Assignment Two")

    # Path variable to hold the file path of the zip file
    file_path <- "Employee Profile.zip"

    # To unzip the employee zip data inside the current project directory.
    unzip(zipfile = file_path, exdir = ".")
    print("The Employee data has successfully exported")

    # To read the CSV file and display the data
    employee_data <- read.csv("Employee Profile.csv")
    View((employee_data))

# Error Handling for Exception
}, error = function(e) {
  # Error Message
  error_message <- list(message = as.character(e))
  print(error_message, pretty = TRUE)
})