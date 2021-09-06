CREATE OR REPLACE STREAM ksql_stream_vehicle_json
(
  "payload" STRUCT<"id" BIGINT,
                   "customer_id" BIGINT,
                   "ano_modelo" VARCHAR,
                   "modelo" VARCHAR,
                   "fabricante" VARCHAR,
                   "ano_veiculo" VARCHAR,
                   "categoria" VARCHAR,
                   "dt_update" BIGINT,
                   "messagetopic" VARCHAR,
                   "messagesource" VARCHAR>
)
WITH (KAFKA_TOPIC='src-mysql-vehicle-json', VALUE_FORMAT='JSON');