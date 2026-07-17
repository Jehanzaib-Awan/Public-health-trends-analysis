-- Public Health Trends Analysis
-- 1. Top Countries by Avg Life Expectancy
SELECT Country, AVG(Life_Expectancy) as Avg_Life_Expectancy
FROM public_health_data
GROUP BY Country
ORDER BY Avg_Life_Expectancy DESC;

-- 2. Expenditure vs Outcomes Correlation Check
SELECT Country, AVG(Health_Expenditure_GDP) as Avg_Exp, AVG(Life_Expectancy) as Avg_LE
FROM public_health_data
GROUP BY Country;

-- 3. Regional/Country Trend Analysis
SELECT Country, Year, Life_Expectancy
FROM public_health_data
WHERE Country IN ('Norway', 'USA', 'India')
ORDER BY Country, Year;
