#! /usr/bin/env bash

kubectl exec rafaeledh-kafka-0 -n ingestion -c kafka -i -t -- bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --property print.key=true --from-beginning --topic src-mysql-flight-json