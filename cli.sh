CONTAINER=$(docker compose ps -q opcatlayer | xargs docker inspect --format '{{.Name}}' | sed 's/\///')
docker exec -it "$CONTAINER" bitcoin-cli -datadir=/data "$@"
