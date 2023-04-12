FROM alpine:3.14
RUN apk update && apk add openjdk11
RUN mkdir /app/
WORKDIR /app/
COPY build/libs/com.example.kafka-study-all.jar .
CMD ["java", "-jar", "com.example.kafka-study-all.jar"]