#!/bin/bash

CHECK=0
ASK_PASSWORD=0
CMD_ARGS=""

while [[ "$#" -gt 0 ]]; do
	case $1 in
	-c|--check) CHECK=1 ;;
	-p|--password) ASK_PASSWORD=1 ;;
	*) echo "Usage: play.sh -c|--check -p|--password"; exit 1 ;;
	esac
	shift
done

source ./env.sh

[[ ${ASK_PASSWORD} == 1 ]] && CMD_ARGS="${CMD_ARGS} --ask-pass"
[[ -z ${ANSIBLE_BECOME_PASS+x} ]] && CMD_ARGS="${CMD_ARGS} --ask-become-pass"
[[ ${CHECK} == 1 ]] && CMD_ARGS="${CMD_ARGS} --check"

ansible-playbook site.yml ${CMD_ARGS}
