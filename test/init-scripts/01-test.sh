#!/bin/bash

echo This is $0 env
env

export PGPASSWORD=$PG_PASSWORD
psql --host $PG_HOST --port $PG_PORT --user $PG_USER -c "SELECT datname FROM pg_database WHERE datistemplate = false";

