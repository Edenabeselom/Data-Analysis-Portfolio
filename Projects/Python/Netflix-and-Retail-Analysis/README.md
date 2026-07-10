# 📊 Data Analysis Report: Netflix Content & E-Commerce Retail

## 🎯 Overview
This report documents the systematic data cleaning and exploratory analysis of two key datasets: Netflix content titles and E-commerce transactional records. The objective is to extract actionable insights regarding global streaming consumption patterns and retail sales performance.

---

## 🎬 Netflix Content Analysis
The Netflix dataset, containing 8,790 total titles, reveals a clear preference for cinematic productions over serialized television content.

### Key Visualizations
* **Content Distribution**: Movies constitute approximately 69.7% of the platform's library.
* **Series Share**: TV shows account for the remaining 30.3% of the content catalog.
<img width="551" height="402" alt="image" src="https://github.com/user-attachments/assets/4b481157-27a7-45a2-82db-1fc9dcde4a25" />
<img width="408" height="425" alt="image" src="https://github.com/user-attachments/assets/ced38872-9ea0-4870-9a16-83d7f53dee2a" />

### Trends and Insights
* **Content Velocity**: The volume of media assets added to the platform experienced a significant surge between 2016 and 2019.
<img width="706" height="397" alt="image" src="https://github.com/user-attachments/assets/561c3e32-fc72-4282-8344-b63d3adef3b0" />

* **Audience Ratings & Release Years**: The most prominent content certificate rating is **TV-MA**, and the library exhibits a specific statistical dispersion in production years.
* <img width="706" height="397" alt="image" src="https://github.com/user-attachments/assets/e1f293dc-0876-4ea2-84ac-719aaff166c2" />
<img width="656" height="320" alt="image" src="https://github.com/user-attachments/assets/0f1085e3-d36f-4e51-9fe3-0565087aaedb" />

---

## 🛒 E-Commerce Transactional Insights
The e-commerce data, covering 524,878 total transactions, highlights significant regional performance disparities, buyer behavior, and key account activity.

### Key Visualizations
* **Regional Performance**: The United Kingdom is the primary driver of gross aggregate sales revenue, far surpassing other jurisdictions like the Netherlands, EIRE, Germany, and France.
* **Best-Selling Inventory**: The top products by aggregate volume include "PAPER CRAFT , LITTLE BIRDIE," "MEDIUM CERAMIC TOP STORAGE JAR," "WORLD WAR 2 GLIDERS ASSTD DESIGNS," "JUMBO BAG RED RETROSPOT," and "WHITE HANGING HEART T-LIGHT HOLDER."
* **Pricing & Yield**: Transactional unit prices for items under $10 show a high frequency of lower-priced items, while the interquartile spread of revenue yield per transaction line highlights the distribution of returns per order.
* **Top Client Accounts**: The top 5 "whale" client accounts demonstrate significant gross procurement spend.

<img width="778" height="398" alt="image" src="https://github.com/user-attachments/assets/cf51a46a-6e09-46bc-b773-d006510f2c0e" />
<img width="714" height="398" alt="image" src="https://github.com/user-attachments/assets/9afedf16-4fb9-4e7e-9be5-57515a3fce62" />

<img width="979" height="397" alt="image" src="https://github.com/user-attachments/assets/8703db51-241f-4a9b-9a08-97c64d57be22" />
<img width="640" height="321" alt="image" src="https://github.com/user-attachments/assets/020dbf19-1494-41d0-8264-5f180826f711" />
<img width="723" height="397" alt="image" src="https://github.com/user-attachments/assets/9a1e6f82-bc08-41e4-9202-365c4c76dbe6" />

---

## 🧹 Data Cleaning Methodology
To ensure high analytical integrity, the following preprocessing steps were applied:

* **Duplicate Removal**: Eliminated redundant entries to prevent skewed volumetric metrics.
* **Invalid Data Filtering**: Removed records containing zero or negative values for Quantity or UnitPrice to focus exclusively on verified transaction events.
* **Standardization**: Normalized date formats and validated categorical integrity across the datasets.
