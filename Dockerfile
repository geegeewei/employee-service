# 使用 OpenJDK 17 作為基礎映像檔
FROM openjdk:17

# 設定工作目錄
WORKDIR /app

# 複製 Quarkus 應用程式的編譯過後的輸出 (假設使用 Maven)
COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/quarkus/ /app/quarkus/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/app/ /app/app/

# 設定 Java 應用程式的入口點
CMD ["java", "-jar", "/app/quarkus-run.jar"]
