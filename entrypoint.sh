#!/bin/bash
set -e

PORT="${PORT:-3000}"
HOST="0.0.0.0"

echo "=========================================="
echo " Starting OpenCode Web Interface"
echo " Port: ${PORT}"
echo " Host: ${HOST}"
echo "=========================================="

# Switch to persistent data volume if mounted
if [ -d "/data" ]; then
  cd /data
else
  cd /workspace
fi

# Run OpenCode Web Server
exec opencode web --port "${PORT}" --hostname "${HOST}"
