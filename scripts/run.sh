export DOWNLOAD_DIR=`readlink -f $DOWNLOAD_DIR`
mkdir -p $DOWNLOAD_DIR
cd docker
docker-compose build
docker-compose up
docker-compose rm -f