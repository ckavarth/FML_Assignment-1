## 1)Dataset:

## I have taken the dataset in web from this link below:
## https://www.kaggle.com/datasets/kukuroo3/body-signal-of-smoking?resource=download
##

##2)import the Data set into R from the machine.

dataset = read.csv("C:\\Users\\Chaitu\\Desktop\\Body signal of smoking.csv", header = TRUE)
dataset

##Summary statistics for quantitative variables
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

# Transform the 'weight(kg)' variable by taking the square root
dataset$weight_sqrt <- sqrt(dataset$weight)

#Print the first few rows of the dataset to see the transformed variable
head(dataset)

# Filter data for individuals who smoke
smoking_data <- dataset[dataset$smoking == "smoking", ]

# Plot scatterplot of Height(cm) vs. weight
plot(dataset$height.cm., dataset$weight,
     xlab = "Height(cm)",
     ylab = "Weight",
     main = "Scatterplot of Height vs. Weight")

# Plot one quantitative variable
hist(dataset$weight)








