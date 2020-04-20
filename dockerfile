FROM tomcat:jdk8-openjdk
RUN apt update && apt install -y git && apt install -y maven
RUN mkdir /tmp/boxfuse/ && \
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse/ && \
mvn -f /tmp/boxfuse/pom.xml package && \
cp /tmp/boxfuse/target/hello-1.0.war /usr/local/tomcat/webapps/
