# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a community-developed snap for the [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project.

Vaultwarden, formerly known as bitwarden_rs, is a Rust-based implementation of the Bitwarden® server API, providing you compatibility with upstream Bitwarden® clients. Vaultwarden is perfect for self-hosted deployments where running the official resource-heavy service might not be ideal. Vaultwarden is neither associated with nor endorsed by Bitwarden® Inc.

## Features
- Strict confinement, using only the [network](https://snapcraft.io/docs/network-interface) and [network-bind](https://snapcraft.io/docs/network-bind-interface) interfaces.
- New releases are automatically built and published after new upstream releases.
- Support for external databases such as MySQL and PostgreSQL.
- Support for the `amd64`, `arm64` and `armhf` CPU architectures.

## Installation
Vaultwarden can be installed from the [Snap Store](https://snapcraft.io/vaultwarden) using the following command:

$ `sudo snap install vaultwarden`

## Configuration

### Web Interface
Vaultwarden listens on `0.0.0.0:8000` by default, and uses the HTTP protocol. See below on how to configure HTTPS.

### Settings File
The listening address, port, database and more are configurable via: `/var/snap/vaultwarden/current/.env`. Additional settings can be found in the upstream repository [here](https://github.com/dani-garcia/vaultwarden/blob/main/.env.template).

### HTTPS Support
The recommended way to configure HTTPS is by configuring a [reverse proxy](https://github.com/dani-garcia/vaultwarden/wiki/Proxy-examples).

Otherwise, you can simply:
- Uncomment `ROCKET_TLS` in the settings file
- Place the certificate(s) file at `/var/snap/vaultwarden/current/ssl/certs.pem`
- Place the key file at `/var/snap/vaultwarden/current/ssl/key.pem`
- Restart Vaultwarden ($ `sudo snap restart vaultwarden`)

## Building
1. Follow the official Snapcraft guide [here](https://snapcraft.io/docs/create-a-new-snap) to set up your system to build snap packages.
2. Clone this repository and change your working directory into it.
   - $ `git clone https://github.com/DownThePark/snapcraft-vaultwarden.git`
   - $ `cd snapcraft-vaultwarden`
3. Run the $ `snapcraft` command and wait for the build to finish.

## Credits

Credits go to [Daniel García](https://github.com/dani-garcia) (the main author) and everyone who contributed to this project found at https://github.com/dani-garcia/vaultwarden
