docker-compose stop

docker rm dockergeopic_mapproxy_1
docker rm dockergeopic_mapnik_1
docker rm dockergeopic_mongodb_1
docker rm dockergeopic_db_1

docker-compose build

docker-compose up -d
