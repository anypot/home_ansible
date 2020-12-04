#!/bin/sh

export ANSIBLE_USER=
export ANSIBLE_SSH_PASS=
export ANSIBLE_BECOME_PASS=
export NAS_SSH_PORT=
export NAS_NEW_80_PORT=
export NAS_NEW_443_PORT=
export PUBKEY_FILE=

ansible-playbook site.yml