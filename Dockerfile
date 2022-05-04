FROM alpine:3

RUN apk --update --no-cache add git aws-cli

COPY entrypoint.sh /entrypoint.sh
RUN git config --global --add safe.directory /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
