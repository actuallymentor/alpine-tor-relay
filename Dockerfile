FROM alpine:latest

LABEL maintainer "Mentor Palokaj <mentor@palokaj.co>"

ARG TOR_VERSION
ARG DEBIAN_FRONTEND="noninteractive"
ARG PUID=1000
ARG GUID=1000

RUN addgroup --g 1000 containergroup
RUN adduser -u 1000 -G containergroup -h /home/containeruser -D containeruser

RUN apk update && \
    apk add --no-cache bash tzdata tor=="$TOR_VERSION"

COPY entrypoint.sh /entrypoint.sh
RUN chmod ugo+rx /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
