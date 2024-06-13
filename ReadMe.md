# Dockerized Kirby environment

## Build Docker image

```
docker build -t docker-starterkit .
```

## Start Docker container

```
docker run -d --name dockerkirby -p 80:80 \
  --mount type=bind,source=$(pwd)/starterkit,destination=/var/www/html \
  --env USERID=$(id -u) docker-starterkit
```

or

```
./startdocker.sh
```

## Stop Docker Container (and remove container)

```
./stopdocker.sh
```
