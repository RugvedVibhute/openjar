FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the required JAR files to the container
COPY spring-zeebe-connector-runtime-8.1.7-with-dependencies.jar connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar ./

# Set the classpath and run the application
CMD ["java", "-cp", ".:spring-zeebe-connector-runtime-8.1.7-with-dependencies.jar:connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar", "io.camunda.connector.runtime.ConnectorRuntimeApplication"]



FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the required JAR files to the container
COPY dummy.jar connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar ./

# Set the classpath and run the application
CMD ["java", "-cp", "dummy.jar:connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar:.", "io.camunda.connector.runtime.ConnectorRuntimeApplication"]


FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the required JAR files to the container
COPY spring-zeebe-connector-runtime-8.1.7-with-dependencies.jar connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar ./

# Set the classpath and run the application
CMD java -cp ".:spring-zeebe-connector-runtime-8.1.7-with-dependencies.jar:connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar:." io.camunda.connector.runtime.ConnectorRuntimeApplication

FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the required JAR files to the container
COPY spring-zeebe-connector-runtime-8.1.7-SNAPSHOT-with-dependencies.jar connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar ./

# Set the classpath and run the application
CMD java -cp ".:spring-zeebe-connector-runtime-8.1.7-SNAPSHOT-with-dependencies.jar:connector-postgresql-0.1.0-SNAPSHOT-with-dependencies.jar" io.camunda.connector.runtime.ConnectorRuntimeApplication
