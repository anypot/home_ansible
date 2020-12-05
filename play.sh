#!/bin/bash

CHECK=0

while [[ "$#" -gt 0 ]]; do
	case $1 in
	-c|--check) CHECK=1 ;;
	*) echo "Usage: play.sh -c|--check"; exit 1 ;;
	esac
	shift
done

source ./env.sh

if [[ ${CHECK} == 1 ]]; then
	ansible-playbook site.yml --check
else
	ansible-playbook site.yml
fi
