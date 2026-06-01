#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"

if ! command -v rg >/dev/null 2>&1; then
  echo "ripgrep (rg) is required for this scan."
  exit 2
fi

PATTERN='(BEGIN [A-Z ]+ PRIVATE KEY|AIza[0-9A-Za-z_-]{20,}|(api[_-]?key|secret|password|passwd|token|private[_-]?key|service[_-]?account|adminsdk|refresh[_-]?token|client[_-]?secret|firebaseConfig)[[:space:]]*[:=][[:space:]]*["'\'']?[^"'\''[:space:]]{8,})'

echo "Scanning: $TARGET"
echo

if rg -n --hidden \
  --glob '!**/.git/**' \
  --glob '!**/node_modules/**' \
  --glob '!**/build/**' \
  --glob '!**/dist/**' \
  --glob '!**/DerivedData/**' \
  --glob '!**/test-results/**' \
  --glob '!**/coverage/**' \
  -e "$PATTERN" "$TARGET"; then
  echo
  echo "Potential private markers found. Review every match before publishing."
  exit 1
fi

echo "No common private markers found."
