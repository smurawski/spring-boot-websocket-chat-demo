FROM adoptopenjdk/openjdk11:x86_64-alpine-jre11u-nightly
RUN apk add bash
ENV PORT 8080
EXPOSE 8080
COPY ./target /opt/target
# COPY --from=BUILD /usr/src/app/target /opt/target
WORKDIR /opt/target

CMD ["/bin/bash", "-c", "find -type f -name '*.jar' | xargs java -jar"]
