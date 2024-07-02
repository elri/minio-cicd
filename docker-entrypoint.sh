#/bin/bash

if [ -z $MINIO_BUCKET_NAME ]; then
/usr/bin/mc alias set minio http://localhost:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD;
/usr/bin/mc mb minio/$MINIO_BUCKET_NAME;
if [ $MINIO_BUCKET_PUBLIC ]
/usr/bin/mc policy set public minio/$MINIO_BUCKET_NAME;
fi
fi