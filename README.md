# Devpulsion Traefik server

To get easy working HTTPS.

This repo help to provide and deploy [traefik](https://docs.traefik.io/) with docker as backend into production for the [devpulsion](https://devpulsion.com) server. Can quickly be set for your own server with a few changes.

- CI is done with github actions
- Traefik is running thanks to Docker
- The `/production` folder is copy on the server with config and script to (re)start the docker image.
- Start any docker-compose image with traefik label and you'll get your site up and running with https.

## How to use it

If you want to use it for your own purpose: 

- clone the repo on Github
- update the `/production/traefik.yml` emails (mine is hardcoded)
- set all the required environement vars on Github: read `.github/workflows/DEPLOY.md` to get the full list

Once done and push on github, create a Release and the Github workflow will process the deploy workflow.

## LICENSE

MIT
