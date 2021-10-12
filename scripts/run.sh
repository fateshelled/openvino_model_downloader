DONWLOAD_DIR=`readlink -f $DONWLOAD_DIR`
mkdir -p $DONWLOAD_DIR
cd docker
docker-compose build
docker-compose up
docker-compose rm -f