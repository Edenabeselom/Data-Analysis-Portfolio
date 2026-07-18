SELECT education, 
       COUNT(*) AS total_customers, 
       ROUND(100.0 * SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS success_rate
FROM bank_marketing_project.bank
GROUP BY education
ORDER BY success_rate DESC;