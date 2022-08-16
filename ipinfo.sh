#!/bin/bash

declare -r en_tock="[INSERT_BASE64_ENCRYPTED_TOKEN]"

declare -r token=("$(cd /tmp || cd /tmp || return; touch random_07.txt; echo "$en_tock" >> random_07.txt; base64 -d random_07.txt || return; rm random_07.txt)")

# Quotes are messy, but don't worry, it works.
# shellcheck disable=SC2128
declare -r ipinfo_1=("$(sed 's/.$//' <<< "$(sed "s/'//" <<< "https://ipinfo.io?token='$token'";)" )")

if [ "$1" == "" ] || [ "$1" == "debug" ] ; then

    if [ "$1" == "debug" ]; then
        echo "Debug ipinfo_1: {$ipinfo_1}"
        echo "Waiting 60 seconds"
        echo
        declare second="$SECONDS"
        while [ "$SECONDS" -lt 61 ]; do
            if [ $second != $SECONDS ]; then
                echo "Timer: $SECONDS"
            fi
            second="$SECONDS"
        done
        echo
        curl "$ipinfo_1"
        echo
        exit
    fi
    # shellcheck disable=SC2128
    if [ "$ipinfo_1" != NULL ]; then
        curl "$ipinfo_1"
        echo
    fi
    exit
fi

# shellcheck disable=SC2128
declare -r ipinfo_2=("$(sed 's/.$//' <<< "$(sed "s/'//" <<< "https://ipinfo.io/$1?token='$token'";)" )")

if [ "$2" == "debug" ]; then
    echo "Debug ipinfo_2: {$ipinfo_2}"
    echo "Waiting 60 seconds"
    echo
    declare second="$SECONDS"
    while [ $SECONDS -lt 61 ]; do
        if [ $second != $SECONDS ]; then
            echo "Timer: $SECONDS"
        fi
        second="$SECONDS"
    done
    echo
    curl "$ipinfo_2"
    echo
    exit
fi

# shellcheck disable=SC2128
if [ "$ipinfo_2" != NULL ]; then
    curl "$ipinfo_2"
    echo
fi
