#!/bin/bash

# This shell script creates an .env file, builds some images
# and loads their containers.

# To run, make sure to add permissions to this file:
# chmod +x ./runme.sh

# USAGE EXAMPLE:
# ./runme.sh

cp env-example .env && sed -i 's/UTC/Europe\/Athens/g' .env

docker-compose up -d nginx mysql workspace phpmyadmin redis