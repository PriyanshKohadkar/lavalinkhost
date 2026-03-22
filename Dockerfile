FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
RUN wget https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -O Lavalink.jar
COPY application.yml .
EXPOSE 2333
CMD ["java", "-Xmx350m", "-Xms100m", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=50", "-jar", "Lavalink.jar"]
