ARG VERSION=latest
FROM minio/minio:$VERSION

CMD ["minio", "server", "/data", "--console-address", ":9001"]