#! /usr/bin/env bash

#dentro do pinot controller executar comando para criar tabela
./bin/pinot-admin.sh AddTable -schemaFile /opt/pinot/pinot_schema_configuration/customers-schema.json -tableConfigFile /opt/pinot/pinot_schema_configuration/customers-table.json  -exec

./bin/pinot-admin.sh AddTable -schemaFile /opt/pinot/pinot_schema_configuration/flight-schema.json -tableConfigFile /opt/pinot/pinot_schema_configuration/flight-table.json  -exec

./bin/pinot-admin.sh AddTable -schemaFile /opt/pinot/pinot_schema_configuration/vehicle-schema.json -tableConfigFile /opt/pinot/pinot_schema_configuration/vehicle-table.json  -exec