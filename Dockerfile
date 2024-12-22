FROM docker.io/library/alpine:3.21
LABEL maintainer="jesse@weisner.ca"
LABEL org.opencontainers.image.source https://github.com/jweisner/tftpd

ENV TFTPD_OPTS="--foreground --address 0.0.0.0:6969 --create --permissive --verbose --verbosity 3 --secure /tftproot"

RUN apk add --no-cache tftp-hpa
RUN mkdir /tftproot \
 && chown 65534:65534 /tftproot \
 && chmod 777 /tftproot

WORKDIR /tftproot

CMD [ "sh", "-c", "in.tftpd $TFTPD_OPTS" ]
