#!/bin/bash

kafka_dir=/kafka_2.11-0.10.1.0

echo starting zookeeper

${kafka_dir}/bin/zookeeper-server-start.sh ${kafka_dir}/config/zookeeper.properties &
echo 'started zookeeper'

sleep 5

echo 'starting kafka'

${kafka_dir}/bin/kafka-server-start.sh ${kafka_dir}/config/server.properties

echo started kafka


# ${kafka_dir}/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test1
# ${kafka_dir}/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test2
${kafka_dir}/bin/kafka-topics.sh --list --zookeeper localhost:2181
echo created topics


