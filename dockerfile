FROM openjdk:17

WORKDIR /app

# Copy backend jar
COPY backend/target/app.jar app.jar

# Copy frontend files (optional if served by backend)
COPY frontend/ /app/static/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]