FROM openjdk:8-jre-alpine

COPY ./target/helm-demo-ms3-0.0.1-SNAPSHOT.jar ./

ENTRYPOINT [ "java", "-jar", "helm-demo-ms3-0.0.1-SNAPSHOT.jar" ]