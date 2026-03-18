-- =========================
-- KPI METRICS
-- =========================
SELECT department,
       COUNT(DISTINCT encounter_id) AS total_encounters,
       ROUND(AVG(length_of_stay_days), 2) AS avg_length_of_stay_days,
       ROUND(AVG(total_cost_usd), 2) AS avg_total_cost_usd,
       ROUND(SUM(total_cost_usd), 2) AS total_cost,
       SUM(length_of_stay_days) AS total_los_days
  FROM encounters
 GROUP BY department;

-- =========================
-- HOSPITAL DEMAND (TIME SERIES)
-- =========================
SELECT substr(admit_date, -4) || '-' || printf('%02d', CAST (substr(admit_date, 1, instr(admit_date, '/') - 1) AS INTEGER) ) AS month,
       COUNT(DISTINCT encounter_id) AS total_encounters
  FROM encounters
 GROUP BY month
 ORDER BY month;


-- =========================
-- DEPARTMENT UTILIZATION AND COST DISTRIBUTION
-- =========================

-- Encounter Volume by Department
SELECT department,
       COUNT(DISTINCT encounter_id) AS total_encounters,
       ROUND( (COUNT(DISTINCT encounter_id) * 100.0 / SUM(COUNT(DISTINCT encounter_id) ) OVER () ), 2) AS percentage_of_total_encounters
  FROM encounters
 GROUP BY department
 ORDER BY total_encounters DESC;

-- Department Share of Hospital Cost
SELECT department,
       COUNT( * ) AS total_encounters,
       SUM(total_cost_usd) AS total_department_cost,
       ROUND( (SUM(total_cost_usd) * 100.0 / SUM(SUM(total_cost_usd) ) OVER () ), 2) AS percentage_of_total_hospital_cost
  FROM encounters
 GROUP BY department
 ORDER BY total_department_cost DESC;

-- =========================
-- EFFICIENCY ANALYSIS
-- =========================

-- Department Cost vs Length of Stay
SELECT department,
       ROUND(AVG(length_of_stay_days), 2) AS avg_length_of_stay_days,
       ROUND(SUM(total_cost_usd) / SUM(length_of_stay_days), 2) AS hospital_cost_per_day_usd,
       ROUND(AVG(total_cost_usd), 2) AS avg_total_cost_per_encounter,
       ROUND(SUM(total_cost_usd) / SUM(length_of_stay_days), 2) AS cost_per_day
  FROM encounters
 GROUP BY department
 ORDER BY avg_total_cost_per_encounter DESC;
