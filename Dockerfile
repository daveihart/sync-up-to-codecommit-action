FROM alpine:3

RUN apk --update --no-cache add git aws-cli
RUN git config --global --add safe.directory /github/workspace

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
