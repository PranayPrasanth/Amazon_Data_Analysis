# Amazon Retail Strategy Analysis: Revenue & Operations Optimization

![Focus](https://img.shields.io/badge/Focus-Business_Strategy-blue) ![Tool](https://img.shields.io/badge/Tool-SQL_Analytics-orange) ![Outcome](https://img.shields.io/badge/Outcome-Profitability-green)

## 📊 Executive Summary
This project acts as a strategic audit of Amazon's retail performance, utilizing advanced data analytics to identify profit leaks and growth opportunities. 

In the dynamic retail sector, raw sales figures often hide underlying inefficiencies. By analyzing a dataset covering transactions, customer behavior, and inventory logistics, this project answers critical commercial questions: **Where are we losing revenue? Which products are eroding margins through returns? And how efficient is the supply chain?**

The analysis focuses on three core pillars of retail management:
1.  **Portfolio Management:** Identifying declining assets vs. growth drivers.
2.  **Cost Control:** Mitigating losses from high return rates in premium categories.
3.  **Operational Efficiency:** Optimizing inventory turnover and shipping reliability.

## 💼 Strategic Findings & Business Impact

The analysis of over 20 distinct business scenarios revealed the following critical insights impacting the bottom line:

### 1. 🚨 Portfolio Risk: "Dead Weight" Identification
* **The Insight:** A Year-Over-Year (YoY) revenue comparison (2022 vs. 2023) exposed a catastrophic decline in specific product lines that are occupying valuable inventory space without generating cash flow.
* **Key Metric:** **93.75% Revenue Collapse** for Product ID #351 (Unisex Sports Cap) . Product ID #593 (Magic Set) followed with a **90.91%** drop.
* **Strategic Recommendation:** Immediate SKU rationalization. These products should be marked for clearance to free up working capital and warehouse capacity for higher-turnover goods.

### 2. 💸 Margin Protection: The High Cost of Returns
* **The Insight:** While the "Electronics" category drives high revenue, it also suffers from the highest return rates, significantly eroding net profit margins.
* **Key Metric:** High-ticket items like the **Apple iMac 24-Inch** showed a **17.29% Return Rate**, the highest in the dataset.
* **Business Context:** A 17% return rate on a premium product implies massive reverse logistics costs and potential stock depreciation.
* **Strategic Recommendation:**
    * **Audit Product Content:** Ensure product descriptions for the iMac match the user experience to reduce "expectation mismatch" returns.
    * **Vendor Review:** Investigate quality control for "Exercise Resistance Bands" (13.48% return rate) to determine if the supplier contract should be terminated.

### 3. 🚚 Operational Bottlenecks
* **The Insight:** Identified inefficiencies in the fulfillment process where orders exceeded the standard 3-day shipping SLA (Service Level Agreement).
* **Strategic Recommendation:** Renegotiate contracts with underperforming logistics providers identified in the analysis to improve Customer Satisfaction (CSAT) scores.

## 🛠️ Analytical Methodology

While the focus is on business outcomes, the insights were derived using robust SQL methodologies to ensure data accuracy and integrity:

* **Trend Analysis:** Utilized Window Functions (`LAG`, `LEAD`) to perform time-series analysis on revenue growth.
* **Customer Segmentation:** Applied logic to distinguish between "New" and "Returning" customers to calculate Customer Lifetime Value (CLTV).
* **Inventory Automation:** Designed logic to simulate real-time inventory deduction, essential for accurate stock forecasting.


## 💻 How to Navigate the Data
1.  **Database Setup:** The `schema.sql` file outlines the data architecture used for this analysis.
2.  **Analysis Execution:** The `analysis_queries.sql` file contains the logic used to extract the insights above.
3.  **Output:** The `results/` folder contains the raw data supporting these findings.

---
*Author: Pranay Prasanth*
*Master's in Business Analysis and Finance | University of Leicester*
