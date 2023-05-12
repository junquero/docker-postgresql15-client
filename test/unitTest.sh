test [ -z "$PG_PASSWORD" ] && echo "Missing env variable PG_PASSWORD" && exit 1

docker run --rm \
  -e PG_HOST=xxx -e PG_PORT=5432 -e PG_USER=postgres -e PG_PASSWORD=$PG_PASSWORD \
  -v $PWD/init-scripts:/init-scripts -v $PWD/../dbinit.sh:/psql/dbinit.sh \
  postgresql15-client:1
