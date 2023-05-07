FROM maven:3.8.3-openjdk-11

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src/ /app/src/

RUN mvn clean install
