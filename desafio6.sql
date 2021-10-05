CREATE VIEW faturamento_atual AS
SELECT
MIN(p.plan_value) faturamento_minimo,
MAX(p.plan_value) faturamento_maximo,
ROUND(AVG(p.plan_value), 2) faturamento_medio,
SUM(p.plan_value)faturamento_total
FROM SpotifyClone.users AS u
JOIN SpotifyClone.plans AS p ON u.plan_id = p.plan_id;

