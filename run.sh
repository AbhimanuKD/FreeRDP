#!/usr/bin/env bash
set -euo pipefail

chmod +x install_rdp_client.sh connect_rdp.sh smoke_test.sh 2>/dev/null || true

PORT="${PORT:-8000}"

echo "Starting FreeRDP project website on http://localhost:${PORT}"
python3 -m http.server "$PORT" --directory .
