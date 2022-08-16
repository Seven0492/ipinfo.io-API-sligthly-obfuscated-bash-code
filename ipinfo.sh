#!/bin/bash

declare -r en_tock="[INSERT_BASE64_ENCRYPTED_TOKEN]"

declare -r token=("$(cd /tmp || cd /tmp || return; touch random_07.txt; echo "$en_tock" >> random_07.txt; base64 -d random_07.txt)")

declare if_exist=("$(ls /tmp || grep "random_07.txt")")

if [ "$if_exist" != NULL ]; then
    cd /tmp || cd /tmp || return; rm random_07.txt
    unset if_exist
fi

# Quotes are messy, but don't worry, it works.
declare -r ipinfo_1=("$(sed 's/.$//' <<< "$(sed "s/'//" <<< "https://ipinfo.io?token='$token'";)" )")

if [ "$1" == "" ] || [ "$1" == "debug" ] ; then

    if [ "$1" == "debug" ]; then
        echo "Debug ipinfo_1: {$ipinfo_1}"
        echo "Waiting 60 seconds"
        echo
        sleep 60
        curl "$ipinfo_1"
        echo
        exit
    fi
    if [ "$ipinfo_1" != NULL ]; then
        curl "$ipinfo_1"
        echo
    fi
    exit
fi

declare -r ipinfo_2=("$(sed 's/.$//' <<< "$(sed "s/'//" <<< "https://ipinfo.io/$1?token='$token'";)" )")

if [ "$2" == "debug" ]; then
    echo "Debug ipinfo_2: {$ipinfo_2}"
    echo "Waiting 60 seconds"
    echo
    sleep 60
    curl "$ipinfo_2"
    echo
    exit
fi

if [ "$ipinfo_2" != NULL ]; then
    curl "$ipinfo_2"
    echo
fi
