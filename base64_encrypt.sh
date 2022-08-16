#!/bin/bash

if [ "$1" != "" ]; then
	declare unencrypted="$1"
	echo "Here is the base64 version: $(cd /tmp || cd /tmp || return; touch unencrypted_07.txt; "$unencrypted" >> unencrypted_07.txt; base64 unencrypted_07.txt || return; rm unencrypted_07.txt)"
	unset unencrypted
fi
