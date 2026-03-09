#Install required packages (only needs to be done once)
install.packages("rpart", repos = "https://cloud.r-project.org")
install.packages("rpart.plot", repos = "https://cloud.r-project.org")

#Load cleaned dataset
customers <- read.csv("python/clean_telco_data.csv")

#Convert the churn variable to a factor for classification modeling
customers$Churn <- as.factor(customers$Churn)

#Fit a logistic regression model to estimate the probability of customer churn
#Predictors:
  #tenure
  #MonthlyCharges
  #Contract
model <- glm(
  Churn ~ tenure + MonthlyCharges + Contract,
  data = customers,
  family = "binomial"
)

#Display regression results
#include coefficient estimates and statistical significance
summary(model)

#Convert log-odds coefficients into odds ratios for easier interpretation
#Odds ratios show how much each variable affects the likelihood of churn
exp(coef(model))

#Calculate 95% confidence intervals for odds ratios
exp(confint(model))

#Visualize predicted churn probabilites from the logistic regression model
plot(
  customers$tenure,
  predict(model, type = "response"),
  xlab = "Customer Tenure",
  ylab = "Predicted Churn Probability",
  main = "Churn Probability vs Tenure"
)