FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
RUN wget https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -O Lavalink.jar
COPY application.yml .
EXPOSE 2333
CMD ["java", "-Xmx400m", "-jar", "Lavalink.jar"]
