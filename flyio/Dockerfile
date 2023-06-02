FROM dockette/alpine:3.18

LABEL maintainer="sulcmil@gmail.com"

ENV FLYCTL_INSTALL=/usr/local

# INSTALLATION
RUN apk update && apk upgrade --no-cache  && \
    # DEPENDENCIES #############################################################
    apk add --no-cache curl git make openssl docker && \
    # DEPLOYER #################################################################
    curl -L https://fly.io/install.sh | sh && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["flyctl"]
