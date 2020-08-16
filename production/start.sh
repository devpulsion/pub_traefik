#!/bin/sh

################################################
# Check args
################################################
if [ "$1" = "" ]
then
    echo "Missing version number to deploy"
    exit 1
fi;

################################################
# Announce what's going to happen
################################################
touch current-version.txt
CURRENT_VERSION=`cat ./current-version.txt`

echo "→ Start deployment from v$CURRENT_VERSION to v$1"
echo 

################################################
# Set current version
################################################

echo "→ Create docker network traefik_network"
docker network create traefik_network

# Stop the current version if any
if [ "$CURRENT_VERSION" = '' ]
then
    echo "→ No current running version to stop"
else
    echo "→ Stop the current running version v$CURRENT_VERSION"
    cd "v$CURRENT_VERSION" && docker-compose stop && docker-compose rm -f && cd ..
    echo
fi;

# Start the new version
echo "→ Start the new version"
cd "v$1" && docker-compose create --force-recreate && docker-compose up -d && cd ..
echo
 
# Store the current release & history
echo "$1" > current-version.txt

NOW=$(date +"%Y-%m-%d-%H:%M:%S") && echo "$NOW : $1" >> deploy-history.txt

# Yipikaye
echo "🥁 All done! Version $1 is now running"