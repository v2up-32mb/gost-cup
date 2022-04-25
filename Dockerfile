FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates && \
    apk add --no-cache curl bash tree tzdata wget && \
    cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN wget https://github.com/go-gost/gost/releases/download/v3.0.0-beta.2/gost-linux-amd64-3.0.0-beta.2.gz && \
    gzip -d gost-linux-amd64-3.0.0-beta.2.gz && \
    chmod +x gost-linux-amd64-3.0.0-beta.2 && \
    mv gost-linux-amd64-3.0.0-beta.2 /usr/bin/gost
