#!/usr/bin/env bash
set -euo pipefail
BOT_ROOT="${BOT_ROOT:-$HOME/bot/main}"
cd "$BOT_ROOT"
readonly max_attempts=30
readonly sleep_seconds=2
for ((i = 1; i <= max_attempts; i++)); do
  if docker inspect --format '{{.State.Running}}' freqtrade 2>/dev/null | grep -qx true; then
    docker compose ps
    exit 0
  fi
  sleep "$sleep_seconds"
done
docker compose ps -a || true
exit 1
