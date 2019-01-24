#!/bin/bash

set -eo pipefail

# Install merge plugin.
docker run --rm \
    -v "$HOME/.composer":/composer \
    -v "$PWD":/app \
    composer/composer:alpine 
docker ps -a

# Install all requirements.
#docker run --rm \
#    -v "$HOME/.composer":/composer \
#    -v "$PWD":/app \
#    composer/composer:alpine update -n
docker exec composer composer create-project drupal-composer/drupal-project:8.x-dev my_site_name_dir --stability dev --no-interaction
