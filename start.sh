#/bin/bash
docker build -t hello-api:v1.0 .

docker run -itd --name hello-api-server -p 8081:8081 hello-api:v1.0