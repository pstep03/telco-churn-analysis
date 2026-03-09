-- Overall Churn KPIs
SELECT
    COUNT(*) AS total_customers,
    SUM(Churn) AS churned_customers,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate_percentage
FROM customers;

-- Churn by contract type
SELECT
    Contract,
    COUNT(*) AS total,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate
FROM customers
GROUP BY Contract;

-- Churn by tenure group
SELECT
    tenure_group,
    COUNT(*) AS total,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate
FROM customers
GROUP BY tenure_group;