FROM openjdk:17-jdk-alpine3.13

ADD /target/pocci-0.0.1-SNAPSHOT.jar app.jar
ADD /src/main/resources/application.properties application.properties

EXPOSE 8080 8080

ENV PROFILE=production
ENTRYPOINT ["java"\
    ,"-Duser.timezone=America/Sao_Paulo"\
    ,"-Duser.language=pt"\
    ,"-Duser.country=BR"\
    ,"-Dfile.encoding=UTF-8"\
    ,"-Dspring.config.location=application.properties"\
    ,"-Dspring.profiles.active=${PROFILE}"\
    ,"-Djava.security.egd=file:/dev/./urandom"\
    ,"-Xmx2g"\
    ,"-jar"\
    ,"/app.jar"]
