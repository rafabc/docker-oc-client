FROM alpine:3.15

LABEL maintainer="rafael.blanco@inetum.com"

ENV OC_VERSION "4.6"

RUN wget --no-check-certificate https://mirror.openshift.com/pub/openshift-v4/clients/oc/$OC_VERSION/linux/oc.tar.gz --output-document /tmp/oc-client.tar.gz && \
    apk add libc6-compat && \
    apk add --no-cache ca-certificates && \
    tar -xzvf  /tmp/oc-client.tar.gz -C /tmp/ && \
    mv /tmp/oc /usr/bin/ && \
    rm -rf /tmp

EXPOSE 8010