#!/bin/bash

ANSIBLE_PATH=~/workspace/settings/mac-ansible

## command line tools
xcode-select --install

## install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## install ansible
brew install ansible

## clone repo
git clone -b template https://github.com/kento-Y/mac-ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
ansible-playbook -i inventory/localhost localhost.yml
