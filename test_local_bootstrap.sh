#!/bin/sh
set -o errexit

# Using podman/docker we can test the setup scripts without a need for a real spawnhost
podman build -t linuxsetup1 .
