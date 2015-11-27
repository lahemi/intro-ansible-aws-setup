#!/bin/bash

source ansible_user_credentials

export AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID:?no AWS access key id set}"
export AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY:?no AWS secret access key set}"

export ANSIBLE_CONFIG="$(pwd)/ansible.cfg"

ansible-playbook -vvvv -i hosts --private-key keys/deployment_key.pem main_playbook.yml $*

