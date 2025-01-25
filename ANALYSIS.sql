create database customer_churn;
use customer_churn;
select * from cleaned;

-- Churned Customers by Gender --
SELECT gender_name, COUNT(*) AS churned_customers 
FROM cleaned 
WHERE Churn = 'Yes'
GROUP BY gender_name;

-- Churned Customer by Gender and Payment type --
select paymentmethod, gender_name, count(paymentmethod) as 'No. of Customers' 
from cleaned 
where churn = 'Yes' 
group by paymentmethod, gender_name
order by count(paymentmethod) desc;

-- Calculate average tenure of churned vs. retained customers. --
select churn, avg(tenure) as 'Avg of Churn' from cleaned where churn = "Yes"
Union
select churn, avg(tenure) as 'Avg of Retained' from cleaned where churn = 'No';

-- Effect of Internetserive on Customer Churn --
SELECT churn, internetservice, COUNT(internetservice) 
FROM cleaned 
WHERE churn = 'Yes' 
AND (internetservice = 'DSL' OR internetservice = 'Fiber Optic')
GROUP BY churn, internetservice
UNION
SELECT churn, internetservice, COUNT(internetservice) 
FROM cleaned 
WHERE churn = 'No' 
AND (internetservice = 'DSL' OR internetservice = 'Fiber Optic')
GROUP BY churn, internetservice;

-- Senior Cititzen Analysis --
select churn,Seniorcitizen, count(Seniorcitizen) from cleaned where Churn = 'Yes' group by Seniorcitizen
Union
select churn,Seniorcitizen, count(Seniorcitizen) from cleaned where Churn = 'No' group by Seniorcitizen; 

-- Churn Rate by Contract Type --
select contract, 
       count(case when churn = 'Yes' then 1 end) as churned_customers, 
       count(*) as total_customers, 
       (count(case when churn = 'Yes' then 1 end) * 1.0 / count(*)) as churn_rate  
from cleaned  
group by contract;
