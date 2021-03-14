# Symfony v5.2 Starter Project

This project can be used as a starter project for Symfony v5.2.\*

## Requirements

- Composer: https://getcomposer.org
- Symfony CLI: https://symfony.com/download

## Steps to reproduce setup

```bash
# Setup new symfony project
$ symfony new api-platform-26

# Move to new project folder
$ cd api-platform-26

# Install Api Platform
$ composer req api
```

## Pre Setup
- Change the database URL in ./.env file

## Setup

```bash
$ sh setup.sh
```

## Run application

```bash
# Type command directly
$ php -S localhost:8080 -t public

# Use bash file
$ sh run.sh

# Use bash file with varibles
$ APP_HOST=0.0.0.0 APP_PORT=8080 sh run.sh

# Visit OpenAPI documentation
$ http://localhost:8080
```

## Database migrations

```bash
sh ./scripts/db/migrate.sh
```
