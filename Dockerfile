FROM maven:3.8.6-openjdk-11-slim
RUN apt update && apt install git -y
RUN git clone https://github.com/openmrs/openmrs-core.git
WORKDIR ./openmrs-core
RUN mvn clean package
EXPOSE 8080
WORKDIR webapp
CMD ["mvn","jetty:run"]
