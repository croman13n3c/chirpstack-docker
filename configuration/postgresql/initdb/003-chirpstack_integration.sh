#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create role chirpstack_integration with login password 'postgresChirpstack';
    create database chirpstack_integration with owner chirpstack_integration;
EOSQL
