#!/usr/bin/env bash
set -euo pipefail

if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 is required to run the smoke test."
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to run the smoke test."
  exit 1
fi

bash -n install_rdp_client.sh
bash -n connect_rdp.sh

PORT=8000
python3 -m http.server "$PORT" >/tmp/freerdp_smoke_server.log 2>&1 &
SERVER_PID=$!
trap 'kill "$SERVER_PID" >/dev/null 2>&1 || true' EXIT

for _ in $(seq 1 20); do
  if curl -fsS "http://127.0.0.1:$PORT/index.html" >/tmp/freerdp_smoke_page.html 2>/dev/null; then
    break
  fi
  sleep 0.5
done

curl -fsS "http://127.0.0.1:$PORT/index.html" | grep -q "FreeRDP"

printf '\nSmoke test passed: HTML page served successfully and shell scripts parse correctly.\n'
