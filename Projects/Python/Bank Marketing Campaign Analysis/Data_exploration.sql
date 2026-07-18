SELECT 
    COUNT(*) AS total_records,
    AVG(age) AS avg_age,
    MAX(balance) AS max_balance,
    MIN(balance) AS min_balance
FROM bank_marketing_project.bank;