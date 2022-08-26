DEV="whoami_dev"
DEV_HOST="whoami-dev"
PROD="whoami_prod"
PROD_HOST="whoami-prod"

docker run -d \
    -l "traefik.http.routers.$DEV.rule=Host(\`$DEV_HOST.docker.localhost\`)" \
    --net-alias $DEV \
    --name $DEV \
    --hostname $DEV \
    --platform linux/amd64 \
    traefik/whoami

docker run -d \
    -l "traefik.http.routers.$PROD.rule=Host(\`$PROD_HOST.docker.localhost\`)" \
    --net-alias $PROD \
    --name $PROD \
    --hostname $PROD \
    --platform linux/amd64 \
    traefik/whoami

