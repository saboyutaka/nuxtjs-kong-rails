#!/bin/bash
# wait-for-cassandra.sh

set -e

host="$1"
port="$2"
user="$3"
shift 3
cmd="$@"

until psql -h $host -p $port -U $user -c "SELECT 1"; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

kong migrations up

>&2 echo "Postgres is up - executing command"
exec $cmd
