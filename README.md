# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is an unofficial snap for the [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project.

Vaultwarden, formerly known as bitwarden_rs, is a Rust-based implementation of the Bitwarden® server API, and provides you great compatibility with upstream Bitwarden® clients. Vaultwarden is perfect for self-hosted deployments where running the official resource-heavy service might not be ideal. Vaultwarden is neither associated with nor endorsed by Bitwarden® Inc.

## Features
- It features strict confinement, using only the [network](https://snapcraft.io/docs/network-interface) and [network-bind](https://snapcraft.io/docs/network-bind-interface) interfaces.
- New snap releases are automatically built and published shortly after new versions of Vaultwarden are released from upstream.
- External databases such as MySQL and PostgreSQL are supported.

## Installation
Vaultwarden can be installed from the [Snap Store](https://snapcraft.io/vaultwarden) using the following command:

$ `sudo snap install vaultwarden`

Or, if you built a local version yourself, you can install it by entering:

$ `sudo snap install ./vaultwarden_<version>_<arch>.snap --dangerous`

## Configuration

#### Settings File
You can edit the listening address, port, database and more via: `/var/snap/vaultwarden/current/.env`

#### Web Interface
Vaultwarden listens on `0.0.0.0:8000` by default, and uses the HTTP protocol.

#### HTTPS Support
Most modern browsers will not allow you to use the cryptographic operations of Vaultwarden without HTTPS. Therefore, it is required to configure Vaultwarden with HTTPS support. The recommended way to do so is by configuring a [reverse proxy](https://github.com/dani-garcia/vaultwarden/wiki/Proxy-examples).

Otherwise, you can simply uncomment `ROCKET_TLS` in the settings file, place a certificate file at `/var/snap/vaultwarden/current/ssl/certs.pem`, a key file at `/var/snap/vaultwarden/current/ssl/key.pem` and restart Vaultwarden.

#### Applying Changes
After any changes are made, Vaultwarden will need to be restarted.

$ `sudo snap restart vaultwarden`

## How to Build
1. Follow the [official Snapcraft guide](https://snapcraft.io/docs/snapcraft) to set up your system to build snap packages.
2. Clone this repostiory and change your working directory into it.
   - $ `git clone https://github.com/DownThePark/snapcraft-vaultwarden.git`
   - $ `cd snapcraft-vaultwarden`
3. Run the $ `snapcraft` command and wait for the build to finish.

## Credits

Credits go to [Daniel García](https://github.com/dani-garcia) (the main author) and everyone who contributed to this project found at https://github.com/dani-garcia/vaultwarden
