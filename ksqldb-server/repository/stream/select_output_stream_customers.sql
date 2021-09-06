-- QUERY 1
SELECT
"sexo",
count("business_key") AS "qtd_por_sexo"
FROM output_ksqldb_stream_customers_json
GROUP BY "sexo"
EMIT CHANGES;

-- QUERY 2

SELECT
"id",
"nome",
"endereco",
"telefone",
"dt_update"
FROM output_ksqldb_stream_customers_json
EMIT CHANGES;

SELECT
c.id
FROM output_ksqldb_stream_customers_json c
    inner join output_ksqldb_stream_flight_json f
        on c.id = f.customer_id
    inner join output_ksqldb_stream_vehicle_json v
        on c.id = v.customer_id
EMIT CHANGES;

SELECT
*
FROM output_ksqldb_stream_flight_json
    inner join output_ksqldb_stream_vehicle_json
        on output_ksqldb_stream_flight_json.customer_id = output_ksqldb_stream_vehicle_json.customer_id
EMIT CHANGES;