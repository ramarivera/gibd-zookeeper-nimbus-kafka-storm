#!/bin/sh

url="https://www.apache.org/dyn/closer.cgi?path=/kafka/0.10.0.1/${KAFKA_FILE_NAME}"
wget -q "${url}" -O "/tmp/${KAFKA_FILE_NAME}"