# Key Findings

## 1. Customer Tenure Strongly Influences Churn

Customers with shorter tenure are significantly more likely to churn. Logistic regression results show that each additional month of tenure decreases the odds of churn. Visualization of predicted churn probabilities confirms that churn risk decreases steadily as customers remain with the service longer.


## 2. Higher Monthly Charges Increase Churn Risk

Feature importance analysis from the Random Forest model indicates that **MonthlyCharges** is the most influential predictor of churn. Customers paying higher monthly fees appear more likely to cancel their service.


## 3. Contract Length Reduces Churn

Customers with longer contract commitments are substantially less likely to churn. Logistic regression results show that one-year and two-year contracts reduce churn odds compared to month-to-month customers.


## 4. Model Performance

The Random Forest classifier achieved an **AUC score of 0.78**, indicating good ability to distinguish between customers who churn and those who remain.

While the model correctly identifies many non-churning customers, some churn cases are missed, which is common in imbalanced churn datasets.


## 5. Business Implications

These results suggest that companies could reduce churn by focusing on:

- Improving early customer retention strategies
- Monitoring customers with high monthly charges
- Encouraging longer contract commitments