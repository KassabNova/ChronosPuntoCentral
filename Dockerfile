FROM amazoncorretto:17-alpine-jdk


ADD target/KosmosAppointments-0.0.1-SNAPSHOT.jar /service/
WORKDIR /service
RUN mkdir reservationQR
ENTRYPOINT ["java","-jar","KosmosAppointments-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080