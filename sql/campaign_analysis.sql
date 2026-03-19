-- Campaign Performance Analysis (August 2016)

SELECT
  trafficSource.campaign AS campaign,
  trafficSource.source AS source,
  trafficSource.medium AS medium,

  COUNT(*) AS sessions,
  SUM(IFNULL(totals.transactions, 0)) AS orders,
  SUM(IFNULL(totals.totalTransactionRevenue, 0)) / 1e6 AS revenue,

  SAFE_DIVIDE(SUM(IFNULL(totals.transactions, 0)), COUNT(*)) AS conversion_rate,
  SAFE_DIVIDE(SUM(IFNULL(totals.totalTransactionRevenue, 0)) / 1e6, COUNT(*)) AS revenue_per_session,
  SAFE_DIVIDE(
    SUM(IFNULL(totals.totalTransactionRevenue, 0)) / 1e6,
    NULLIF(SUM(IFNULL(totals.transactions, 0)), 0)
  ) AS aov

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20160831'

GROUP BY 1,2,3
HAVING sessions >= 100
ORDER BY revenue DESC;
