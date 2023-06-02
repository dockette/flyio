FROM dockette/alpine:3.17

LABEL maintainer="sulcmil@gmail.com"

ENV DEPLOYER_VERSION=7.0.2
ENV DEPLOYER_BIN=/usr/local/bin/dep

# INSTALLATION
RUN apk update && apk upgrade --no-cache  && \
    # DEPENDENCIES #############################################################
    apk add --no-cache curl git make && \
    # DEPLOYER #################################################################
    curl -L https://fly.io/install.sh | sh && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["flyctl"]
