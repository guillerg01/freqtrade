#!/usr/bin/env bash
set -euo pipefail
BOT_ROOT="${BOT_ROOT:-$HOME/bot/main}"
cd "$BOT_ROOT"
sudo docker compose down --rmi local
sudo docker compose build --no-cache
sudo docker compose up -d --remove-orphans
