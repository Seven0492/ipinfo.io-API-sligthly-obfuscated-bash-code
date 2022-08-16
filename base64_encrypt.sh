#!/bin/bash

if [ "$1" != "" ]; then
	declare unencrypted="$1"
	declare encrypted=""
	encrypted=$(cd /tmp || cd /tmp || return; touch unencrypted_07.txt; echo "$unencrypted" >> unencrypted_07.txt; base64 unencrypted_07.txt || return; rm unencrypted_07.txt)
	echo "Here is the base64 version: {$encrypted}"
	unset unencrypted; unset encrypted
fi
