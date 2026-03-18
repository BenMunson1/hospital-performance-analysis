# Hospital Performance Analysis

---

## Executive Summary

This project analyzes hospital operational performance across multiple departments using encounter-level data from 2022–2024. The goal was to identify key drivers of cost, patient volume, and operational efficiency to support better resource allocation and decision-making.

The analysis revealed that while the Emergency Department drives the highest patient volume and daily resource intensity, the ICU contributes disproportionately to overall hospital cost due to extended patient stays. Additionally, certain departments such as Orthopedics exhibit unexpectedly high cost-per-day metrics relative to their length of stay, indicating potential inefficiencies.

An interactive Tableau dashboard was developed to allow stakeholders to explore these dynamics across departments. The findings highlight clear opportunities to reduce costs, improve efficiency, and optimize hospital operations without compromising patient care.

---

## Business Problem

Hospitals must balance **patient care quality with operational efficiency and cost control**. However, without clear visibility into how different departments contribute to overall performance, it becomes difficult to:

* Identify which departments are driving the highest costs
* Understand whether high costs are due to volume, complexity, or inefficiency
* Allocate resources effectively across departments
* Detect opportunities to reduce length of stay or improve throughput

This project aims to answer:

> **Which departments are driving hospital demand, cost, and inefficiency — and where should leadership focus operational improvements?**

---

## Methodology

The analysis combined **SQL-based data transformation** with **interactive dashboard design in Tableau**.

* SQL was used to aggregate encounter-level data into meaningful departmental metrics (volume, cost, length of stay)
* Comparative analysis was performed across departments to identify performance differences
* A **scatter plot with quadrant analysis** was used to evaluate operational efficiency (cost vs. length of stay)
* A time-series analysis was included to assess overall hospital demand trends

The final Tableau dashboard was structured to guide stakeholders through a clear analytical flow:

1. High-level KPIs
2. Hospital demand over time
3. Department utilization
4. Department efficiency

---

## Skills Demonstrated

**SQL**

* Aggregations
* Joins between encounter and patient-level data
* Window functions for percentage-of-total calculations
* Grouped analysis by department
* Data structuring for dashboard compatibility

**Tableau**

* Dashboard design with structured storytelling (top-down layout)
* Interactive filtering across multiple data sources
* KPI development with correct aggregation logic
* Scatter plot (cost vs. length of stay) with quadrant reference lines
* Data visualization best practices (labeling, formatting, layout)

**Data Analysis**

* Operational performance analysis
* Cost vs. volume vs. efficiency comparisons
* Identification of inefficiencies
* Translating data findings into business recommendations

---

## Results & Business Recommendations

### Key Findings

**1. Emergency Department drives demand and daily cost intensity**

* ~25% of all hospital encounters (highest volume)
* Highest cost per day (~$3,600)
* Shortest average length of stay (~2.6 days)

→ Indicates a high-throughput, resource-intensive environment

---

**2. ICU is the largest contributor to overall cost due to long stays**

* Longest length of stay (~10.5 days)
* High cost per encounter (~$21.6K)
* Nearly equal total cost to Emergency despite far fewer encounters

→ Cost is driven by **duration, not daily intensity**

---

**3. Orthopedics shows potential inefficiency**

* Moderate length of stay (~4.7 days)
* Disproportionately high cost per day (~$2,400+)

→ Suggests possible inefficiencies in procedures, materials, or resource usage

---

**4. Oncology costs are high but expected**

* Long stays and high cost per encounter
* Moderate cost per day relative to complexity

→ Reflects case complexity rather than inefficiency

---

**5. Hospital demand is stable over time**

* Monthly encounters range from ~290 to ~374
* No strong seasonal trends observed

→ Enables predictable staffing and operational planning

---

### Business Recommendations

**1. Reduce ICU Length of Stay**

* Even small reductions (5–10%) could significantly lower total hospital cost
* Investigate discharge processes, care coordination, and post-ICU transitions

---

**2. Optimize Emergency Department Resource Usage**

* Focus on reducing cost per day without impacting throughput
* Evaluate staffing models and resource allocation during peak hours

---

**3. Investigate Orthopedics Cost Structure**

* Analyze surgical costs, implant pricing, and operating room efficiency
* Identify drivers behind high daily cost relative to LOS

---

**4. Maintain Oncology Strategy**

* Avoid targeting Oncology for cost reduction without context
* Costs are likely driven by necessary treatment complexity

---

**5. Leverage Stable Demand for Planning**

* Use predictable encounter volume to optimize staffing and budgeting
* Reduce overstaffing or understaffing risk

---

## Next Steps

If given more time, the analysis could be expanded in several ways:

* **Time-based department analysis**
  Evaluate how cost, volume, and LOS change over time within each department

* **Patient-level segmentation**
  Analyze differences by age group, condition, or severity

* **Readmission and outcome metrics**
  Incorporate quality-of-care indicators alongside cost and efficiency

* **Deeper cost breakdowns**
  Identify specific drivers of cost (procedures, medications, staffing)

* **Data model optimization**
  Consolidate data sources into a unified model for more advanced filtering and analysis

---
