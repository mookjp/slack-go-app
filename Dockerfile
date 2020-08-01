FROM alpine:latest

COPY ./bin/server /bin/server

RUN addgroup -g 1001 server && \
    adduser -D -G server -u 1001 server
USER 1001

CMD ["/bin/server"]
