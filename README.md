# TREAFIK SIMPLE EXAMPLE

## Introduction

This is a simple example of a Treafik application.

## Quickstart

```bash
docker compose up -d
bash up_individuals.sh
```

## Check the results

```bash
curl -H Host:whoami-dev.docker.localhost http://localhost
curl -H Host:whoami-prod.docker.localhost http://localhost
```


## Cleanup

```bash
docker-compose down
bash down_individuals.sh
```
