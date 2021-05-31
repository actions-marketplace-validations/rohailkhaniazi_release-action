# See https://hub.docker.com/r/babashka/babashka
FROM babashka/babashka:0.3.5

WORKDIR /var/src/release-action

COPY src src

ENV BABASHKA_CLASSPATH /var/src/release-action/src

ENTRYPOINT [ "bb", "--main", "release-action.core" ]
