# Chinook Database SQL Analysis

This repository contains advanced SQL queries used to extract insights from the **Chinook** sample database, showcasing data aggregation, relational joins, CTEs, and window functions.

## 🚀 Overview
The project is divided into two primary analytical domains:
1. **Customer Behavior:** Analyzing spending patterns and regional rankings.
2. **Product & Inventory Performance:** Evaluating track sales and playlist compositions.

---

## 📊 Query Results & Visualizations

### 1. Product Performance Analysis
Analyzes track popularity by unit sales and revenue contribution.
<img width="539" height="408" alt="image" src="https://github.com/user-attachments/assets/5f551785-cee5-46f4-a03d-ee4cbaceefff" />

### 2. Regional Customer Spending Rank
Utilizes Common Table Expressions (CTEs) and `DENSE_RANK()` to rank customers by their total spending within their respective countries.
<img width="543" height="393" alt="image" src="https://github.com/user-attachments/assets/69819132-f2e3-425f-8444-987b881c50fc" />
### 3. Track Inventory Assessment
Demonstrates the use of `LEFT JOIN` to identify playlist structures, including those without associated tracks (returning `NULL` values).
<img width="563" height="410" alt="image" src="https://github.com/user-attachments/assets/008afb9b-23ec-4390-85f0-b6738179333e" />

---

## 🛠 Technical Skills Demonstrated
* **Advanced Aggregation:** `SUM`, `COUNT`, `AVG`, `GROUP BY`, `HAVING`.
* **Relational Joins:** `INNER JOIN` and `LEFT JOIN` for set analysis.
* **Window Functions:** `DENSE_RANK()` and `PARTITION BY`.
* **Modular Logic:** Implementation of Common Table Expressions (CTEs).
* **Data Formatting:** `ROUND()` for currency precision and `CONCAT()` for string manipulation.

---
