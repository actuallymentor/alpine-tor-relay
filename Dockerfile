FROM alpine:latest

ARG TOR_VERSION

RUN apk update && \
    apk add --no-cache tor=="$TOR_VERSION"

COPY entrypoint.sh /entrypoint.sh
RUN chmod ugo+rx /entrypoint.sh
