#!/usr/bin/env bash
set -euo pipefail

if [[ "$EUID" -ne 0 ]]; then
  echo "Please run as root: sudo ./install_rdp_client.sh"
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends freerdp2-x11 remmina

cat <<'EOF'

FreeRDP client installed successfully.

Usage:
  xfreerdp /u:USERNAME /p:PASSWORD /v:SERVER_IP:3389

Example:
  xfreerdp /u:administrator /p:Password123 /v:192.168.1.10:3389 /f

To connect with a custom file share:
  xfreerdp /u:USERNAME /p:PASSWORD /v:SERVER_IP:3389 /drive:share,/tmp /sound
EOF
