FROM amd64/alpine:3.15 as rootfs-stage

ENV DIST alpine
ENV REV v3.15
ENV ARCH x86_64

#NOTE: Install required packages
RUN apk add --no-cache \
  bash \
  curl \
  tar \
  tzdata \
  wget \
  xz
        
COPY root/ /
ENTRYPOINT ["/init"]
