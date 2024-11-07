# See https://hub.docker.com/r/babashka/babashka
FROM ghcr.io/babashka/babashka:latest

WORKDIR /var/src/release-on-push-action

COPY src src

ENV BABASHKA_CLASSPATH /var/src/release-on-push-action/src

ENTRYPOINT [ "bb", "--main", "release-on-push-action.core" ]
