#/bin/bash
VERSION=v$1

echo $VERSION

docker build -t hello-api:$VERSION .

docker run -itd --name hello-api-server -p 8081:8081 hello-api:$VERSION
