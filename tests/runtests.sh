#!/bin/bash

set -e

case $1 in
	0) FILE=common ;;
	1) FILE=java ;;
	2) FILE=python ;;
esac

ansible-playbook -i tests/inventory tests/$FILE.yml --syntax-check
ansible-playbook -i tests/inventory tests/$FILE.yml --connection=local --sudo
ansible-playbook -i tests/inventory tests/$FILE.yml --connection=local --sudo \
      | grep -q 'changed=0.*failed=0' \
      && (echo 'Idempotence test: pass' && exit 0) \
      || (echo 'Idempotence test: fail' && exit 1)
