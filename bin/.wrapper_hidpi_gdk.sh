#!/usr/bin/env bash

# shellcheck source=.find_app.sh
. "$(dirname "$0")/.find_app.sh"

function run() {
    find_app

    export GDK_DPI_SCALE=0.5
    exec "$APP" "${@}"
}

run "${@}"
