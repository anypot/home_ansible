#!/bin/sh

export ANSIBLE_USER=
export ANSIBLE_SSH_PASS=
export ANSIBLE_BECOME_PASS=
export NAS_PORT=
export PUBKEY_FILE=

ansible-playbook site.yml