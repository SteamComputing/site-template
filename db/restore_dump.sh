#!/usr/bin/env bash

dropdb -U $POSTGRES_USER -e --if-exists $POSTGRES_DB
createdb -U $POSTGRES_USER $POSTGRES_DB
cat ./dump.sql | psql -U $POSTGRES_USER --dbname=$POSTGRES_DB

