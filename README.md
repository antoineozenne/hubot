# Hubot Mattermost Webhooks

A simple Docker image that allows to deploy a preconfigured hubot to be used with Mattermost thanks to webhooks.

## Getting Started

### Build the image

Build the Docker image with this command :

```
docker build -t hubot .
```

### Configure Mattermost

You have to configure your mattermost webhooks before starting the hubot container to get the token for outgoing webhooks and the mattermost incoming url.

### Running the container

Run the Docker container with this command :

```
docker run --name hubot --publish PORT:EXPRESS_PORT hubot MATTERMOST_TOKEN MATTERMOST_INCOME_URL MATTERMOST_ENDPOINT
```

The PORT variable is the port to access hubot from the host.
The EXPRESS_PORT is the port on which hubot is started in the container.
The MATTERMOST_TOKEN, MATTERMOST_INCOME_URL and MATTERMOST_ENDPOINT are given by the configuration of mattermost webhooks.

## Link
This repo is the Docker image https://hub.docker.com/r/antoineozenne/hubot/
