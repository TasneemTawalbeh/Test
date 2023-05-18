SELECT
  lot_no,
  COUNT(*) AS Defect_Count
FROM
  Measurements
JOIN
  Specifications ON product_code1 = product_code
WHERE
  t_height > usl OR t_weight > usl
GROUP BY
  lot_no
ORDER BY
  Defect_Count DESC;