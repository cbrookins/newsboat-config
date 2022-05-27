#!/bin/sh

set -eu

if ! command -v sudo >/dev/null 2>&1; then
	>&2 echo "This script requires 'sudo' binary to be installed"
	exit 1
fi

if command -v dnf >/dev/null 2>&1; then
	sudo dnf install -y git ansible
fi

if command -v apt >/dev/null 2>&1; then
	sudo apt install -y git ansible
fi

if command -v pacman >/dev/null 2>&1; then
	sudo pacman -Sy --noconfirm ansible
fi

git clone https://github.com/therealc2c2/newsboat-config && cd newsboat-config

ansible-galaxy collection install community.general
ansible-playbook newsboat.yml