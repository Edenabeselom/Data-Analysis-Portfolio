# 🌍 World Development Indicators (WDI) Executive Dashboard

---

## 📌 Project Overview
This repository contains the Capstone Project completed for the **AnalystLab Africa** data analytics program. The project focuses on an end-to-end evaluation of multi-decade socioeconomic metrics from the World Bank's World Development Indicators (WDI) dataset (2000–2023).

The primary deliverable is an interactive **Power BI Dashboard** designed to provide international development stakeholders with data-driven insights into regional economic performance, digital adoption rates, and core social development indicators.

---

## 📊 Core Indicators Analyzed
* 📈 **GDP Growth (annual %):** Macroeconomic annual percentage growth rate of GDP at market prices.
* 💵 **GDP per Capita (current US$):** Economic output per individual across global territories.
* 🌐 **Individuals Using the Internet (% of population):** Tracked rate of digital connectivity and infrastructure expansion.
* 🏥 **Life Expectancy at Birth, Total (years):** Key health and human development indicator.
* 🎓 **School Enrollment, Primary (% gross):** Structural social metric evaluating educational access.

---

## 🖥️ Dashboard Features & Visual Layout
* 🎛️ **Header Controls:** Interactive multi-select filters for **Region**, **Country Name**, and an interactive **Year Range Slider** (2000–2023).
* 🔢 **Executive KPI Card:** Dynamic average aggregation callout displaying overall baseline indicator metrics across active filter selections.
* 📉 **Indicator Trends (Line Chart):** Multi-indicator time-series analysis comparing macroeconomic volatility against structural social stability over a 23-year window.
* 📊 **Regional Benchmarking (Clustered Bar Chart):** Comparative benchmark ranking average development performance across seven major geographic regions.

---

## 🛠️ Data Transformation & ETL Steps
All data cleaning and modeling steps were executed in **Power Query** prior to visual development:
1. 🔄 **Unpivoting:** Transformed wide-format annual columns (2000–2023) into a vertically normalized relational structure (`Year` and `Value`).
2. 🏷️ **Data Type Standardization:** Explicitly defined integer types for `Year`, floating-point continuous decimals for `Value`, and text format for categorical fields (`Region`, `Country Name`, `Indicator Name`).
3. 🧹 **Null Value Handling:** Filtered out missing data entries within the `Value` metric field to prevent skewing aggregate visual outputs.
4. 🧮 **Aggregation Alignment:** Applied `Average` aggregations across field measures to normalize cross-indicator evaluations.

---

## 💡 Key Insights & Strategic Recommendations
* 🌎 **Regional Disparity:** High-income regions (North America, Europe & Central Asia) maintain significantly higher indicator baseline averages—primarily driven by nominal GDP per capita values—compared to developing regions.
* 📶 **Digital Convergence:** Internet adoption expanded exponentially across all global regions between 2000 and 2023, serving as a primary driver of modern economic participation.
* 🛡️ **Structural Resilience:** Human development metrics (life expectancy and primary school enrollment) demonstrated low volatility and steady multi-decade upward growth.
* 🚀 **Actionable Recommendation:** Prioritize capital deployment into digital and educational infrastructure across lower-baseline regions (Sub-Saharan Africa and South Asia) while supporting fiscal stabilization buffers in volatile economic markets.

---

## 📁 Directory Structure
```text
Power-BI/
├── 📂 data/
│   └── 📄 WDI_Cleaned_Capstone.csv       # Extracted & cleaned dataset
├── 📂 pbix/
│   └── 📊 WDI_Executive_Dashboard.pbix    # Interactive Power BI Desktop file
├── 📂 screenshots/
│   ├── 🖼️ dashboard_overview.png         # Full dashboard screenshot
│   ├── 🖼️ line_chart_trends.png          # Trend analysis visual preview
│   └── 🖼️ regional_comparison.png        # Regional bar chart preview
├── 📂 docs/
│   └── 📑 Final_Report_WDI_Analysis.pdf  # Final project report PDF
└── 📜 README.md                          # Project documentation
