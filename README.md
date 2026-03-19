# Retail Media Campaign Performance Dashboard (GA Sample + Simulated Spend)

🔗 Built using BigQuery + Looker Studio | Focus: Retail Media Analytics & ROAS Modeling

Retail media campaign performance analysis using BigQuery and Looker Studio, modeling ROAS, CVR, and budget allocation strategies.

## 📌 Overview

This project simulates a retail media analytics workflow using Google Analytics sample data to evaluate campaign performance, efficiency, and budget allocation strategies.

The analysis focuses on sessions, revenue, conversion rate, and simulated return on ad spend (ROAS) to support data-driven marketing decisions.

---

## 🎯 Business Problem

Retail media teams must determine:

• Which campaigns drive revenue  
• Which campaigns are efficient  
• Which campaigns are profitable  
• Where to reallocate budget for maximum return

---

## 📊 Dataset

- Source: `bigquery-public-data.google_analytics_sample`
- Time Period: August 2016
- Context: Google Merchandise Store

Note: The dataset does not include advertising spend. Simulated cost was introduced to model ROAS.

---

## 🛠 Tools & Technologies

- Google BigQuery (SQL)
- Looker Studio (Dashboard Visualization)
- Google Cloud Platform

---

## 📈 Key Metrics

- Sessions
- Orders
- Revenue
- Conversion Rate (Orders / Sessions)
- Average Order Value (AOV)
- Revenue per Session (RPS)
- ROAS (Revenue / Simulated Cost)
- ROI ((Revenue - Cost) / Cost)

---

## ⚙️ Methodology

- Aggregated session-level data into daily and campaign-level KPIs
- Calculated blended metrics using:
  
  Revenue per Session = SUM(revenue) / SUM(sessions)

- Simulated cost per session based on traffic medium
- Computed ROAS and ROI
- Analyzed efficiency vs scale tradeoffs across campaigns

---

## 📂 SQL Queries

Key SQL queries used for KPI computation and campaign analysis are included in the `/sql` folder.

These queries demonstrate:
- Aggregation of session-level data
- Calculation of conversion rate, AOV, and revenue per session
- Campaign-level performance analysis

---

## 🔍 Key Insights

- Overall performance shows a conversion rate of ~1.6% and revenue per session of ~$2.5
- Direct/(not set) traffic demonstrates high efficiency but limited scalability
- Some campaigns generate traffic but fail to produce profitable returns
- Budget allocation should prioritize campaigns with positive ROAS and meaningful scale

---

## ⚠️ Limitations

- No actual ad spend data available
- Simulated cost model used for demonstration purposes
- No multi-touch attribution or incrementality analysis
- Based on last-click attribution (Google Analytics data)

---

## 📊 Dashboard

You can view the dashboard here:
### Dashboard
[Download Dashboard (PDF)](Copy_of_RetailMediaCampaignPerformanceDashboard (1).pdf)

### BigQuery Analysis
images/GAConsole_BigQuery.png

### Looker Studio
images/LookerDashboard.png
---

## 🚀 Outcome

This project demonstrates the ability to:

- Work with large-scale behavioral data in BigQuery
- Build KPI frameworks for marketing analytics
- Evaluate campaign performance using unit economics
- Translate data into actionable business insights
