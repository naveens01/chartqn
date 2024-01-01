#!/bin/sh

MONGO_CONTAINER_NAME="mongodb-backup-container"
BACKUP_DIR="/backup"
ZIP_FILE="/backup/backup.zip"
S3_BUCKET_NAME="data-bucket-naveen"
S3_PATH="s3://$S3_BUCKET_NAME"

cd $BACKUP_DIR
zip -r backup.zip .

aws s3 cp $ZIP_FILE $S3_PATH/

rm $ZIP_FILE
