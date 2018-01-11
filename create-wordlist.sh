#!/usr/bin/env bash

urldecode(){
	echo -e "$(sed 's/+/ /g;s/%\(..\)/\\x\1/g;')"
}

cat "$@" | sed -E -e 's/[[:blank:]]+//g' | sed 's/.*/\L&/' | sed 's/://g' | sort | uniq | urldecode
