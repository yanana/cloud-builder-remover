FROM alpine:3.4

COPY remove /bin/
RUN chmod 755 /bin/remove

ENTRYPOINT ["remove"]
