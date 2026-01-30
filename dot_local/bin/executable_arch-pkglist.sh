#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
HOSTNAME=$(cat /etc/hostname 2>/dev/null | tr -d '\n' || echo "unknown-host")

pacman -Qqe > "${SCRIPT_DIR}/pkglist-${HOSTNAME}.txt"

