#!/usr/bin/env bash
set -euo pipefail

SERVER_IP="89.167.74.56"
SSH_USER="root"
REMOTE_DIR="/var/www/portfolio"

rsync -av --delete \
  --exclude ".DS_Store" \
  --exclude ".git" \
  ./ "${SSH_USER}@${SERVER_IP}:${REMOTE_DIR}/"

ssh "${SSH_USER}@${SERVER_IP}" "chown -R www-data:www-data ${REMOTE_DIR} && find ${REMOTE_DIR} -type d -exec chmod 755 {} \\; && find ${REMOTE_DIR} -type f -exec chmod 644 {} \\;"

echo "Deploy complete: https://portfolio.itsfait.com/"
