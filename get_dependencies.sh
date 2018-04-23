#! /bin/bash

BRANCH_MAPNIK=multi
BRANCH_DB=master
BRANCH_MAPPROXY=master

echo update osm-mapnik
if [ -d osm-mapnik/ ]; then
    cd osm-mapnik
    git pull
    git checkout $BRANCH_MAPNIK
    cd ..
else
    git clone https://github.com/geopicardie/docker-geopic-mapnik osm-mapnik -b $BRANCH_MAPNIK
fi

echo update osm-db
if [ -d osm-db/ ]; then
    cd osm-db
    git pull
    git checkout $BRANCH_DB
    cd ..
else
    git clone https://github.com/geopicardie/docker-geopic-postgres-osm osm-db -b $BRANCH_DB
fi

echo update osm-mapproxy
if [ -d osm-mapproxy/ ]; then
    cd osm-mapproxy
    git pull
    git checkout $BRANCH_MAPPROXY
    cd ..
else
    git clone https://github.com/geopicardie/docker-mapproxy-cache osm-mapproxy -b $BRANCH_MAPPROX
fi

