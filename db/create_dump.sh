#!/usr/bin/env bash

pg_dump -h localhost -U $POSTGRES_USER $POSTGRES_DB > /root/db/dump.sql

