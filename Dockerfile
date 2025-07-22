FROM openjdk:11
WORKDIR /app
COPY src/Hello.java
RUN javac Hello.java
CMD ["java","Hello"]
