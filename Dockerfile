ARG VERSION=latest
FROM minio/minio:$VERSION

RUN curl -o ./mc -# https://dl.min.io/client/mc/release/linux-amd64/mc 
RUN chmod +x ./mc

CMD ["minio", "server", "/data", "--console-address", ":9001"]