ARG VERSION=latest
FROM minio/minio:$VERSION

CMD ["minio", "server", "/data", "--address=", ":9000", "--console-address", ":9001"]