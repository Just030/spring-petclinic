FROM adoptopenjdk #베이스가 되는 이미지 
RUN chmod u+x mvnw #실행권한 부여
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} spring-petclinic.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
