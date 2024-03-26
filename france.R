# Load necessary libraries
library(readxl)
library(ggplot2)
library(knitr)
library(tseries)
library(dplyr)
library(tidyr)
library(openxlsx)

# Read the dataset from the Excel file
data <- read_excel('...\\fr-world.xlsx', sheet = 'data')
