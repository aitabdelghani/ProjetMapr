DROP TABLE IF EXISTS categories_oozie;
CREATE EXTERNAL TABLE categories_oozie (
  category_id INT,
  category_department_id INT,
  category_name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/mapr/retail_data_raw/categories';
