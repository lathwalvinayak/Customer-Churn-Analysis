# 📊 Customer Churn Analysis  

This project aims to analyze customer churn in a telecommunications company using **Python, SQL, and Power BI**, helping businesses identify key factors that contribute to churn and improve customer retention strategies.  

## 🚀 Project Overview  

Customer churn is a significant challenge for businesses, and understanding the reasons behind it can help companies develop effective strategies to retain customers. This project provides insights into churn patterns based on various customer attributes, including contract types, internet services, and payment methods.  



## 📊 Tools & Technologies Used  

- **Python** (Pandas, Matplotlib, Seaborn) – Data cleaning and exploratory analysis  
- **SQL** – Data extraction and query-based analysis  
- **Power BI** – Data visualization and dashboard creation  

## 📈 Key Insights  

1. Customers with **month-to-month contracts** have the highest churn rate.  
2. **Fiber Optic** internet service users are more likely to churn compared to DSL users.  
3. Customers using **credit card payment methods** exhibit a higher churn tendency.  
4. The average tenure of churned customers is significantly lower than non-churned customers.



## 🗂 Dataset  

The dataset contains customer information such as:  

- **Customer ID**  
- **Gender**  
- **Contract Type** (Month-to-Month, One-Year, Two-Year)  
- **Internet Service** (DSL, Fiber Optic, None)  
- **Payment Method** (Credit Card, Bank Transfer, etc.)  
- **Tenure (Months)**  
- **Churn Status (Yes/No)**  

You can find the dataset [here](https://github.com/lathwalvinayak/Customer-Churn-Analysis/blob/main/WA_Fn-UseC_-Telco-Customer-Churn.csv)).  

## 🔍 SQL Queries Performed  

```sql
-- Churn rate based on contract type  
SELECT contract, COUNT(*) AS total_customers  
FROM cleaned_data  
WHERE churn = 'Yes'  
GROUP BY contract;  
```

```sql
-- Average tenure of churned vs non-churned customers  
SELECT churn, AVG(tenure)  
FROM cleaned_data  
GROUP BY churn;  
```

## 🚀 Future Improvements  

- Implement predictive models using machine learning techniques (Logistic Regression, Random Forest, etc.).  
- Enhance the Power BI dashboard with more drill-down capabilities.  
- Perform customer segmentation analysis for targeted marketing strategies.  

## 📝 Conclusion  

Through this analysis, we identified key factors contributing to customer churn, providing valuable insights that can help businesses focus on retention efforts.  

---

Feel free to customize the content and update images/links as per your repository.
