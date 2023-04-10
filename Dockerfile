FROM alpine:latest

LABEL maintainer "Mentor Palokaj <mentor@palokaj.co>"

ARG TOR_VERSION
ARG DEBIAN_FRONTEND="noninteractive"

RUN apk update && \
    apk add --no-cache bash tzdata tor=="$TOR_VERSION"

COPY entrypoint.sh /entrypoint.sh
RUN chmod ugo+rx /entrypoint.sh

# Files
RUN mkdir /etc/tor
RUN mkdir /var/lib/tor
COPY torrc.default /etc/tor/torrc

ENTRYPOINT [ "/entrypoint.sh" ]
