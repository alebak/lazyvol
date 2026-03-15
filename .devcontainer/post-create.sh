#!/bin/bash
set -euo pipefail

echo "▶ Setting up lazyvol dev environment for: $(whoami) (UID=$(id -u))"

# ── Docker credential helper ────────────────────────────────────────────────
mkdir -p "${HOME}/.docker"
echo '{"credsStore":""}' > "${HOME}/.docker/config.json"

# ── Git ─────────────────────────────────────────────────────────────────────
git config pull.rebase true

# ── Go tools ────────────────────────────────────────────────────────────────
if ! command -v golangci-lint &>/dev/null; then
  echo "▶ Installing golangci-lint..."
  go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
else
  echo "✓ golangci-lint already installed: $(golangci-lint --version)"
fi