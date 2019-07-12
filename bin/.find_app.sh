#!/usr/bin/env bash

# Don't warn about using which (because we need which -a)
# shellcheck disable=SC2230

function find_app() {
    local app_name
    app_name="$(basename "$0")"

    APP="$(which -a "$app_name" | sed "0,\|^$0\$|d" | head -n 1)"
    [[ ! -e "$APP" ]] && echo "$app_name could not be found" && exit 1
}
