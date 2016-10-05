FROM ubuntu:14.04.5

RUN apt-get update && apt-get install -y \
	default-jre \
	unzip \
	wget \
	curl \
	docker \
	jq \
	coreutils

ENV KAFKA_FILE_NAME="kafka_2.11-0.10.0.1.tgz"
ADD down_kafka.sh /tmp/down_kafka.sh

RUN /tmp/down_kafka.sh && tar xfz /tmp/${KAFKA_FILE_NAME} -C /opt && rm /tmp/${KAFKA_FILE_NAME}


VOLUME ["/kafka"]


ENV KAFKA_HOME /opt/${KAFKA_FILE_NAME}


ADD start-kafka /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
ADD create-topics.sh /usr/bin/create-topics.sh