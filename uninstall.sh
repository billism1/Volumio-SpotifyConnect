#!/usr/bin/env bash

# Force bash shell
if [ -z "$BASH" ]; then
  echo "Launching a bash shell"
  exec bash "$0"
fi
set -eo pipefail

name="volspotconnect2"

echo "Uninstalling ${name} dependencies"

systemctl stop ${name}
rm /etc/systemd/system/${name}.service
rm /data/configuration/music_service/${name}/config.json

echo "Done"
echo "pluginuninstallend"
