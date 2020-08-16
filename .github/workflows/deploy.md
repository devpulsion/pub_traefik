# Deploy workflow

Deploy Traefik image in production

## Steps

1. Copy production/current to production/vx.x.x and commit
2. Sync folder /production to the production server
3. Run the `start.sh` script with the new version

Creating version folder let rollback to a previous version on the server with `start.sh 1.2.3` for example

## Environement variables

All are required, there is no default

| Name               | Description                                       | Example           |
|--------------------|---------------------------------------------------|-------------------|
| DEPLOY_USER        | The user to log into the production server        | root              |
| DEPLOY_HOST        | The server host to log into the production server | devpulsion.com    |
| DEPLOY_PATH        | Path on the server where the scripts will be copy | /web/traefik      |
| DEPLOY_PORT        | Port to log in                                    | 22                |
| DEPLOY_KEY         | SSH private key                                   |                   | 

For deploy key, read [here](https://github.com/appleboy/ssh-action#setting-up-ssh-key)