#!/usr/bin/env bash

# shellcheck source=.find_app.sh
. "$(dirname "$0")/.find_app.sh"

function run() {
    find_app

    exec "$APP" --force-device-scale-factor=2 "${@}"
}

run "${@}"
