CREATE OR REPLACE STREAM output_ksqldb_stream_flight_json
WITH (KAFKA_TOPIC='output-ksqldb-stream-flight-json', PARTITIONS=3, VALUE_FORMAT='JSON')
AS
SELECT
AS_VALUE("payload"->"id") as "business_key",
"payload"->"id" as "id",
"payload"->"customer_id",
"payload"->"aeroporto",
"payload"->"linha_aerea",
"payload"->"cod_iata",
"payload"->"dt_update"
FROM ksql_stream_flight_json
EMIT CHANGES;