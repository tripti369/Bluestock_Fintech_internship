-- 1. Top 5 funds by AUM
SELECT fund_house, SUM(aum_crore)
FROM fact_aum
GROUP BY fund_house
ORDER BY SUM(aum_crore) DESC
LIMIT 5;
SELECT scheme_name, expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;
SELECT transaction_type, COUNT(*) as total_transactions
FROM fact_transactions
GROUP BY transaction_type;
SELECT state, COUNT(*) as total_transactions
FROM fact_transactions
GROUP BY state
ORDER BY total_transactions DESC;
SELECT month, sip_inflow_crore
FROM fact_sip
ORDER BY month;
SELECT sector, SUM(weight_pct) as total_weight
FROM fact_portfolio
GROUP BY sector
ORDER BY total_weight DESC;
SELECT date, index_name, close_value
FROM fact_benchmark
ORDER BY date;
SELECT amfi_code, AVG(nav)
FROM fact_nav
GROUP BY amfi_code;