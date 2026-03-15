#!/bin/bash
set -euo pipefail

echo "▶ Setting up lazyvol dev environment for: $(whoami) (UID=$(id -u))"

# ── Docker credential helper ────────────────────────────────────────────────
mkdir -p "${HOME}/.docker"
echo '{"credsStore":""}' > "${HOME}/.docker/config.json"

# ── Git ─────────────────────────────────────────────────────────────────────
git config pull.rebase true

# ── Go tools ────────────────────────────────────────────────────────────────
echo "▶ Installing Go tools..."
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

echo "✓ Dev environment ready"