# Devpulsion Traefik server

[![Actions Status](https://github.com/devpulsion/pub_traefik/workflows/Deploy%20release%20in%20production/badge.svg)](https://github.com/devpulsion/pub_traefik/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Reverse proxy based on traefik v2.

This repo provides:
- [traefik](https://docs.traefik.io/) docker image configured to work with docker provider
- github action to automatically deploy on dedicatred server. See [details explained here](./blob/master/.github/workflows/deploy.md)

This is the devpulsion.com frontend reverse proxy. You can easily fork it for your own usage.

## How to use it

If you want to use it for your own purpose: 

- install docker on your server
- clone the repo on Github
  - update the `/production/current/traefik.yml` emails (mine is hardcoded)
  - drop all the previous versions `/production/vXXX` 
- set all the environement vars on Github. See the [list here](./blob/master/.github/workflows/deploy.md)
- create a github version to trigger the deployment workflow

## LICENSE

MIT
