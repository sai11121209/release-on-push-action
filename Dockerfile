# See https://hub.docker.com/r/babashka/babashka
FROM ghcr.io/babashka/babashka:1.0.164

WORKDIR /var/src/release-on-push-action

COPY src src

ENV BABASHKA_CLASSPATH /var/src/release-on-push-action/src

ENTRYPOINT [ "bb", "--main", "release-on-push-action.core" ]
