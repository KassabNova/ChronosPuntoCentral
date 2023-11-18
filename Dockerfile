FROM amazoncorretto:17-alpine-jdk


ADD target/KosmosAppointments-0.0.1-SNAPSHOT.jar /service/
WORKDIR /service
ENTRYPOINT ["java","-jar","KosmosAppointments-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080