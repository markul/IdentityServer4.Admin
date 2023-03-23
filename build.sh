version="1.0.6"
# build docker images according to docker-compose
docker-compose build

# rename images with following tag
docker tag skoruba-identityserver4-admin hub.markul.net/identity:$version
docker tag skoruba-identityserver4-admin hub.markul.net/identity:dev
docker tag skoruba-identityserver4-sts-identity hub.markul.net/sts:$version
docker tag skoruba-identityserver4-sts-identity hub.markul.net/sts:dev
docker tag skoruba-identityserver4-admin-api hub.markul.net/identity-api:$version
docker tag skoruba-identityserver4-admin-api hub.markul.net/identity-api:dev

docker image push hub.markul.net/sts:$version
docker image push hub.markul.net/identity:$version
docker image push hub.markul.net/identity-api:$version 
docker image push hub.markul.net/sts:dev
docker image push hub.markul.net/identity:dev
docker image push hub.markul.net/identity-api:dev