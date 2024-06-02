<div align="center">
    <h1>PostgreSQL and PgAdmin4 with Docker</h1>
</div>

## Up server detached mode
```shell
docker compose up -d
```

## Load dummy data
```shell
docker exec -i db psql -U postgres < data/users.sql
```

## Create user and database
```shell
* docker exec -it db bash
* psql -U postgres
* CREATE USER <user_name> WITH ENCRYPTED PASSWORD '<password>';
* CREATE DATABASE <database_name>;
* GRANT ALL PRIVILEGES ON DATABASE <database_name> TO <user_name>;
```