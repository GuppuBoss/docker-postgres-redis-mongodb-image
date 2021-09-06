# Rhino Backend Infrastructure
Sets up and does some minor configuration of Postgres and Redis to run with https://github.com/sayrhino/www.sayrhino.com and https://github.com/sayrhino/portal.

## Setup
Install Docker, either using the [Docker Desktop](https://www.docker.com/products/docker-desktop) installer (recommended for Mac + Windows) or go for the other editions [here](https://docs.docker.com/v17.12/install/).

Build the containers:
```
$ make build
```
Stand up the services:
```
$ make up
```
Bring down the services:
```
$ make down
```
