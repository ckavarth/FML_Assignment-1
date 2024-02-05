##1)Dataset:

## I have taken the dataset in web from this link below:
## https://www.kaggle.com/datasets/kukuroo3/body-signal-of-smoking?resource=download
##

##2)import the Data set into R from the machine.

dataset = read.csv("C:\\Users\\Chaitu\\Desktop\\Body signal of smoking.csv", header = TRUE)
dataset

##3)Print out descriptive statistics for a selection of quantitative and categorical variables.
#summary() function is used to calculate summary statistics for quantitative variables.
quantitative_vars <- c("age", "height(cm)", "weight(kg)", "waist(cm)", "eyesight(left)", "eyesight(right)", "hearing(left)", "hearing(right)", "systolic", "relaxation", "fasting blood sugar", "Cholesterol", "triglyceride", "HDL", "LDL", "hemoglobin", "serum creatinine", "AST", "ALT", "Gtp")
summary(quantitative_vars)

# Frequency table for categorical variables
categorical_vars <- c("ID", "gender", "oral", "dental caries", "tartar", "smoking")

#print("Frequency Table for Categorical Variables:")
for (var in categorical_vars) {
  cat("\nVariable:", var, "\n")
  print(table(dataset[[var]]))
}

##4)Transform the 'weight(kg)' variable by taking the square root
sqrt_weight <- sqrt(dataset$weight)
sqrt_weight

#Print the first few rows of the dataset to see the transformed variable
##head() function is used to print the first few rows of the dataset to see the transformation.

head(dataset)

# Filter data for individuals who smoke
smoking_data <- dataset[dataset$smoking == "smoking", ]

##5)Plot at least one quantitative variable, and one scatterplot
# Plot scatterplot of Height(cm) vs. weight
# A scatterplot is a graphical representation of the relationship between two quantitative variables. 
# Each point on the plot represents a single observation,with one variable plotted on the x-axis and another variable plotted on the y-axis. 
plot(dataset$height.cm., dataset$weight,
     xlab = "Height(cm)",
     ylab = "Weight",
     main = "Scatterplot of Height vs. Weight")

# Plot one quantitative variable (Histogram)  
# A histogram is a graphical representation of the distribution of a single quantitative variable.

hist(dataset$height.cm.)








