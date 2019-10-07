#### KAFKA

/kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server 0.0.0.0:9092 \
    --from-beginning \
    --property print.key=true \
    --topic amma.public.demo_table

