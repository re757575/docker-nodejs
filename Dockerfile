# Specifies where to get the base image (Node v12 in our case) and creates a new container for it
# FROM node:lts-alpine
FROM node:12.18.2-alpine

RUN apk update && \
    apk add --no-cache bash tini

# Set working directory. Paths will be relative this WORKDIR.
WORKDIR /usr/src/app

# Set tini as entrypoint
# Tini is now available at /sbin/tini
ENTRYPOINT ["/sbin/tini","--"]

# CMD ["bash"]
