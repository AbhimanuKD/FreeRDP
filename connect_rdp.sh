#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 3 ]]; then
  echo "Usage: ./connect_rdp.sh <host> <username> <password> [port]"
  echo "Example: ./connect_rdp.sh 192.168.1.10 administrator Password123 3389"
  exit 1
fi

HOST="$1"
USERNAME="$2"
PASSWORD="$3"
PORT="${4:-3389}"

if ! command -v xfreerdp >/dev/null 2>&1; then
  echo "xfreerdp not found. Run: sudo ./install_rdp_client.sh"
  exit 1
fi

xfreerdp \
  /u:"$USERNAME" \
  /p:"$PASSWORD" \
  /v:"$HOST:$PORT" \
  /cert:ignore \
  /dynamic-resolution \
  /sound \
  /network
