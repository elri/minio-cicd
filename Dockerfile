ARG VERSION=latest
FROM minio/minio:$VERSION

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD ["minio", "server", "/data", "--console-address", ":9001"]