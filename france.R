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

# 1. Plotting
ggplot(data, aes(x = Year)) + 
  geom_line(aes(y = World, color = "Мир")) + # Plot World GDP growth
  geom_line(aes(y = France, color = "Франция")) + # Plot France GDP growth
  labs(title = "Динамика темпов экономического роста",
       y = "Темп роста ВВП (%)",
       x = "Год") +
  scale_color_manual(name = "Регион", values = c("Мир" = "blue", "Франция" = "red")) +
  theme_minimal() # Using a minimal theme for the plot
