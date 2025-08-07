FROM alpine:3.10

COPY scripts/* /usr/local/bin/

RUN apk add --no-cache python3 && \
    pip3 install --no-cache-dir -r /usr/local/bin/requirements.txt && \
    chmod +x /usr/local/bin/oktashell

ENTRYPOINT ["oktashell"]
