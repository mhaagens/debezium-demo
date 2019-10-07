  
FROM debezium/connect:0.10
ENV KAFKA_CONNECT_ES_DIR=$KAFKA_CONNECT_PLUGINS_DIR/kafka-connect-elasticsearch

# Deploy Confluent Elasticsearch sink connector
RUN mkdir $KAFKA_CONNECT_ES_DIR && cd $KAFKA_CONNECT_ES_DIR

RUN curl -fSL -o /tmp/plugin.tar.gz \
    https://github.com/RedHatInsights/expandjsonsmt/releases/download/0.0.2/kafka-connect-smt-expandjsonsmt-0.0.2.tar.gz && \
    tar -xzf /tmp/plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR && \
    rm -f /tmp/plugin.tar.gz;

ADD ./confluentinc-kafka-connect-elasticsearch-5.3.1 $KAFKA_CONNECT_ES_DIR