docker login -e $DOCKER_EMAIL -p $DOCKER_PASSWORD -u $DOCKER_USER
docker tag -f zcashd stevenzeiler/zcashd:latest
docker push stevenzeiler/zcashd:latest
