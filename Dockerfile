#build docker image of java application
FROM  docker.io/library/openjdk:latest
COPY  . /usr/src/HelloWorld
WORKDIR /usr/src/HelloWorld
RUN  ["javac", "HelloWorld.java"]
ENTRYPOINT ["java", "-jar" , "HelloWorld"]
