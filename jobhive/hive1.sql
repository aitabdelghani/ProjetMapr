DROP TABLE IF EXISTS orders_oozie;
CREATE EXTERNAL TABLE orders_oozie (
  order_id INT,
  order_date STRING,
  order_customer_id INT,
  order_status STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/mapr/retail_data_raw/orders';
