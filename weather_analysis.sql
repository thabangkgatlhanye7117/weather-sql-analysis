-- ================================
-- WEATHER DATA ANALYSIS QUERIES
-- ================================

-- 1️⃣ Average temperature per city
SELECT city,
       ROUND(AVG(temperature), 2) AS avg_temperature
FROM weather_data
GROUP BY city
ORDER BY avg_temperature DESC;

-- 2️⃣ Weather condition frequency
SELECT condition,
       COUNT(*) AS total_occurrences
FROM weather_data
GROUP BY condition
ORDER BY total_occurrences DESC;

-- 3️⃣ High humidity records (> 65%)
SELECT city,
       humidity,
       date
FROM weather_data
WHERE humidity > 65
ORDER BY humidity DESC;

-- 4️⃣ Hottest recorded day
SELECT city,
       temperature,
       date
FROM weather_data
ORDER BY temperature DESC
LIMIT 1;

-- 5️⃣ Temperature statistics per city
SELECT city,
       COUNT(*) AS total_records,
       ROUND(AVG(temperature),2) AS avg_temp,
       MIN(temperature) AS min_temp,
       MAX(temperature) AS max_temp
FROM weather_data
GROUP BY city;