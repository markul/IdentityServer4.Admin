# build docker images according to docker-compose
docker-compose build

# rename images with following tag
docker tag skoruba-identityserver4-admin hub.markul.net/identity:1.0.6
docker tag skoruba-identityserver4-sts-identity hub.markul.net/sts:1.0.6