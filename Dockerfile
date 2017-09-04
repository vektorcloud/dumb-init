FROM quay.io/vektorcloud/base:3.6

RUN apk add --no-cache dumb-init && \
  # Link for compatibility 
  ln -sv /usr/bin/dumb-init /bin/dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "-v", "--"]
