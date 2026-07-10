# 📊 Data Analysis Report: Netflix Content & E-Commerce Retail

## 🎯 Overview
This report documents the systematic data cleaning and exploratory analysis of two key datasets: Netflix content titles and E-commerce transactional records. The objective is to extract actionable insights regarding global streaming consumption patterns and retail sales performance.

---

## 🎬 Netflix Content Analysis
The Netflix dataset, containing 8,790 total titles, reveals a clear preference for cinematic productions over serialized television content.

### Key Visualizations
* **Content Distribution**: Movies constitute approximately 69.7% of the platform's library.
* **Series Share**: TV shows account for the remaining 30.3% of the content catalog.
  <img width="551" height="402" alt="image" src="https://github.com/user-attachments/assets/6bd11a71-9e4e-4887-be51-c491d17c4c40" />
<img width="408" height="425" alt="image" src="https://github.com/user-attachments/assets/061dcc76-04a8-4519-a633-74e426ae9f77" />
### Trends and Insights
* **Content Velocity**: The volume of media assets added to the platform experienced a significant surge between 2016 and 2019.
<img width="706" height="397" alt="image" src="https://github.com/user-attachments/assets/8a73c6f3-e8e9-4e93-9f02-0d8cb7bbfb3d" />

* **Audience Ratings & Release Years**: The most prominent content certificate rating is **TV-MA**, and the library exhibits a specific statistical dispersion in production years.
* <img width="706" height="397" alt="image" src="https://github.com/user-attachments/assets/2789b99f-4414-4dd7-accc-3f93b2dfdd4d" />
<img width="656" height="320" alt="image" src="https://github.com/user-attachments/assets/2801c353-d482-45b7-88ce-fa2599412a7a" />

---

## 🛒 E-Commerce Transactional Insights
The e-commerce data, covering 524,878 total transactions, highlights significant regional performance disparities and buyer behavior trends.

### Key Visualizations
* **Regional Performance**: The United Kingdom is the primary driver of gross aggregate sales transactions.
* **Market Distribution**: Germany, France, EIRE, and Spain follow the UK as significant market contributors.
* **Top Products**: The top-selling items by aggregate volume include "PAPER CRAFT , LITTLE BIRDIE" and "MEDIUM CERAMIC TOP STORAGE JAR".
<img width="778" height="398" alt="image" src="https://github.com/user-attachments/assets/5c35cc2d-1d22-4d49-bea5-a49407cb0687" />
<img width="714" height="398" alt="image" src="https://github.com/user-attachments/assets/8e302a93-fb05-44a8-8b35-8954c0aebb0f" />
<img width="979" height="397" alt="image" src="https://github.com/user-attachments/assets/0bae2978-8e3a-475f-b6ff-d11db35c5a7a" />
<img width="640" height="321" alt="image" src="https://github.com/user-attachments/assets/294e2365-9c51-4a0e-8125-b4fb0a694b11" />
<img width="723" height="397" alt="image" src="https://github.com/user-attachments/assets/1b271c22-879d-415b-96cc-037a30862c82" />

---

## 🧹 Data Cleaning Methodology
To ensure high analytical integrity, the following preprocessing steps were applied:

* **Duplicate Removal**: Eliminated redundant entries to prevent skewed volumetric metrics.
* **Invalid Data Filtering**: Removed records containing zero or negative values for Quantity or UnitPrice to focus exclusively on verified transaction events.
* **Standardization**: Normalized date formats and validated categorical integrity across the datasets.
