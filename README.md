# JMusicBot-docker [![Build & upload image](https://github.com/Renaud11232/JMusicBot-docker/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/Renaud11232/JMusicBot-docker/actions/workflows/build.yml)

A multiarch docker image for running [JMusicBot](https://github.com/jagrosh/MusicBot), a cross-platform Discord music bot with a clean interface, and that is easy to set up and run yourself!

The image can be used on `amd64` and `arm64` systems. This image updates every week (on Mondays).

## Starting the bot

You'll first need to create a `data` directory for your configuration files. This folder will be mounted in the container. In that folder, you should create a `config.txt` file that must contain at least `token` and `owner` keys. More information on that configuration file in the [JMusicBot documentation](https://jmusicbot.com/config/).

Once configured, you can start the bot using either docker CLI or docker-compose.

### Docker CLI

```bash
docker run -d --name jmusicbot --restart unless-stopped -v ./data:/data ghcr.io/renaud11232/jmusicbot
```

### Compose

docker-compose.yml :

```yml
version: "3"
services:
  jmusicbot:
    container_name: jmusicbot
    image: "ghcr.io/renaud11232/jmusicbot"
    volumes:
      - ./data:/data
    restart: unless-stopped
```

```bash
docker-compose up -d
```