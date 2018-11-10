FROM alpine:3.8

ARG WAIT_ON_VERSION

RUN apk --no-cache add nodejs=8.11.4-r0 npm=8.11.4-r0 \
    && npm install -g wait-on@${WAIT_ON_VERSION} \
    && apk del npm

ENTRYPOINT [ "wait-on" ]

LABEL org.label-schema.schema-version="1.0.0"
LABEL org.label-schema.name="wait-on"
LABEL org.label-schema.description="Dockerized version of https://github.com/jeffbski/wait-on"
LABEL org.label-schema.url="https://github.com/kosprov/wait-on-docker"
LABEL org.label-schema.vcs-url="https://github.com/kosprov/wait-on-docker"
LABEL org.label-schema.vendor="Kos Prov (kosprov@gmail.com)"
LABEL org.label-schema.version="3.2.0"
LABEL org.label-schema.docker.cmd="docker run --rm kosprov/wait-on -t 10000 https://www.google.com"
LABEL org.label-schema.docker.cmd.help="docker run --rm kosprov/wait-on"