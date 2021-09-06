CREATE OR REPLACE STREAM ksql_stream_flight_json
(
  "payload" STRUCT<"id" BIGINT,
                   "customer_id" BIGINT,
                   "aeroporto" VARCHAR,
                   "linha_aerea" VARCHAR,
                   "cod_iata" VARCHAR,
                   "dt_update" BIGINT,
                   "messagetopic" VARCHAR,
                   "messagesource" VARCHAR>
)
WITH (KAFKA_TOPIC='src-mysql-flight-json', VALUE_FORMAT='JSON');