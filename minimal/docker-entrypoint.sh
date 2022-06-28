#!/bin/sh
set -e


VERSION_FILE='/octoprint/octoprint/.CONTAINER_VERSION'

# Test if file exists
# If yes, check if contents equal current version
# If either are NO, run pip check...

pip check


if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- octoprint --basedir /octoprint/octoprint "$@"
fi

exec "$@"
