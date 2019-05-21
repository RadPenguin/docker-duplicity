FROM alpine:latest

ARG BUILD_DATE
ARG VERSION
LABEL build_version="RadPenguin version:- ${VERSION} Build-date:- ${BUILD_DATE}"

ENV TZ="America/Edmonton"

RUN \
 echo "**** install runtime packages ****" && \
  apk add --no-cache \
    alpine-sdk \
    ca-certificates \
    tzdata && \
 echo "**** install duplicity ****" && \
  apk add \
    bash \
    duplicity \
    py-pip && \
  pip install PyDrive && \
 echo "**** cleanup ****" && \
  rm -rf \
	/tmp/*
