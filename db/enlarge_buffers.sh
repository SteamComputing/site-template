#!/bin/sh

if [ -z "${1}" ]
then
  BUFFER_SIZE=512MB
else
  BUFFER_SIZE=${1}
fi

sed -i "s/^shared_buffers = [^[:space:]]*/shared_buffers = ${BUFFER_SIZE}/" /var/lib/postgresql/data/postgresql.conf

