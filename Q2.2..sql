SELECT
  product_code1,
  COUNT(*) AS Defect_Count
FROM
  Measurements 
JOIN
  Specifications ON Product_Code1 = Product_Code
WHERE
  T_Height > USL OR T_Weight > USL
GROUP BY
  Product_Code
ORDER BY
  Defect_Count DESC;