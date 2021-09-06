CREATE OR REPLACE STREAM output_ksqldb_stream_vehicle_json
WITH (KAFKA_TOPIC='output-ksqldb-stream-vehicle-json', PARTITIONS=3, VALUE_FORMAT='JSON')
AS
SELECT
AS_VALUE("payload"->"id") as "business_key",
"payload"->"id" as "id",
"payload"->"customer_id",
"payload"->"ano_modelo",
"payload"->"modelo",
"payload"->"fabricante",
"payload"->"ano_veiculo",
"payload"->"categoria",
"payload"->"dt_update"
FROM ksql_stream_vehicle_json
EMIT CHANGES;