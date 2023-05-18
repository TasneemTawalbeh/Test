SELECT 
  product_code, 
  AVG(t_height) AS mean_height, 
  STDEV(t_height) AS std_dev_height, 
  AVG(t_weight) AS mean_weight, 
  STDEV(t_weight) AS std_dev_weight
FROM 
  question_1_2
GROUP BY 
  product_code
  
  