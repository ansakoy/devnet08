#!/bin/bash

set -euxo

docker-compose up -d

ansible-playbook --vault-pass-file playbook/.vaultpass playbook/site.yml -i playbook/inventory/prod.yml

docker-compose down

