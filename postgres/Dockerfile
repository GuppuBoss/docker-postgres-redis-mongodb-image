FROM postgres:13-alpine

ARG DATABASE_USER=postgres

ENV POSTGRES_USER=${DATABASE_USER}

# The postgres image runs all *.sql files in the docker-entrypoint-initdb.d folder
COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

# TODO: Need to set ownership of file so that non-root user can use it
COPY ./postgresql.conf /etc/postgresql/postgresql.conf
