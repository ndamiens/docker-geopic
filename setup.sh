#!/bin/bash

BASE=/srv/geopicardie
mkdir -p $BASE/volumes/postgres $BASE/volumes/mongo $BASE/volumes/osm-data
chmod a+w $BASE/volumes/postgres
chmod a+w $BASE/volumes/mongo
chmod a+w $BASE/volumes/osm-data
