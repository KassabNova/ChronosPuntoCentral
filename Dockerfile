FROM amazoncorretto:17-alpine-jdk


#ADD target/KosmosAppointments-0.0.1-SNAPSHOT.jar /service/
COPY target/KosmosAppointments-0.0.1-SNAPSHOT.jar KosmosAppointments-0.0.1-SNAPSHOT.jar
#WORKDIR /service
ENTRYPOINT ["java","-jar","/KosmosAppointments-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080