# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a community-developed snap for the upstream [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project, made with the aim of providing a stable, secure, and simple experience.

## Features
- Strict confinement, using only the [network](https://snapcraft.io/docs/network-interface) and [network-bind](https://snapcraft.io/docs/network-bind-interface) interfaces.
- Support for the `amd64`, `arm64` and `armhf` CPU architectures.
- Automatic stable releases following new upstream releases.

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/vaultwarden)

Vaultwarden can be installed from the Snap Store using the following command:

    sudo snap install vaultwarden

## Configuration

### Web Interface
By default, Vaultwarden listens on `0.0.0.0:8000` using the HTTP protocol.

### Settings File
The listening address, port, database and more are configurable via `/var/snap/vaultwarden/current/.env`, which comes preloaded with a number of common settings (some of which are commented out by default). If it suits your fancy, additional settings can be found in the upstream repository [here](https://github.com/dani-garcia/vaultwarden/blob/main/.env.template).

### HTTPS Support
The recommended way to configure HTTPS is by placing Vaultwarden behind an SSL/TLS configured [reverse proxy](https://github.com/dani-garcia/vaultwarden/wiki/Proxy-examples).

Otherwise, you can simply:
- Uncomment `ROCKET_TLS` in the settings file
- Place a certificate(s) file at `/var/snap/vaultwarden/current/ssl/certs.pem`
- Place a key file at `/var/snap/vaultwarden/current/ssl/key.pem`

### Apply Changes
Vaultwarden will need to be restarted after any changes are made to its configuration.

    sudo snap restart vaultwarden

## Building
Follow the official Snapcraft guide, which you can find [here](https://snapcraft.io/docs/create-a-new-snap), to set up your system to build snap packages. Afterwards, clone this repository, change your working directory into it, and run the build.

    git clone https://github.com/DownThePark/snapcraft-vaultwarden.git
    cd snapcraft-vaultwarden
    snapcraft

## Credits
Credits go to everyone who contributed to the upstream project found at https://github.com/dani-garcia/vaultwarden
