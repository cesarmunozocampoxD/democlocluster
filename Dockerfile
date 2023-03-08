FROM openjdk:17-alpine
VOLUME /tmp
EXPOSE 8080
ADD ./build/libs/democluster-0.0.1-SNAPSHOT.jar democluster.jar
ENTRYPOINT ["java", "-jar", "/democluster.jar"]
#docker build -t projectco/k8stest:1.0.0 .
#docker run -it -p 8080:8080 --name data-management-service projectco/k8stest:1.0.0