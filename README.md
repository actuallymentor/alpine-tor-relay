# Alpine-based docker container for Tor relays

The most simple config possible.

Build with:

```
source .env # get TOR_VERSION and IMAGE_NAME from .env
docker build --build-arg TOR_VERSION=$TOR_VERSION  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME":latest -t "$DOCKERHUB_USERNAME/$IMAGE_NAME":$TOR_VERSION .
docker image push -a $DOCKERHUB_USERNAME/$IMAGE_NAME
```