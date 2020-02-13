# Docker ONJ Judge
A docker container for the ONJ Judge by Nicolo John Davis [https://sourceforge.net/projects/onj/](https://sourceforge.net/projects/onj/)

## Launch Container
```bash
$ docker-compose up -d
```

## Remove Container
```bash
$ docker-compose down
```

## Swarm Launch
```bash
$ docker swarm init
$ docker stack deploy --compose-file docker-compose-production.yml judge
```

## Swarm Remove
```bash
$ docker stack rm judge
$ docker swarm leave --force
```