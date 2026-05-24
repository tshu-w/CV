#!/usr/bin/env bash
set -euo pipefail

status=0
pattern='fa-mobile-screen|fa-weixin|tel:\+86|微信号|微信[:：]|WeChat|wechat|(^|[^0-9])1[3-9][0-9]{9}([^0-9]|$)'

while IFS= read -r file; do
  case "$file" in
    AGENTS.md|.pre-commit-config.yaml|scripts/check-private-contacts.sh) continue ;;
    *.typ|*.tex|*.md|*.html) ;;
    *) continue ;;
  esac

  if git show ":$file" | grep -En "$pattern" >/tmp/private-contact-match.$$; then
    echo "Private contact detail found in staged file: $file" >&2
    cat /tmp/private-contact-match.$$ >&2
    status=1
  fi
  rm -f /tmp/private-contact-match.$$
done < <(git diff --cached --name-only --diff-filter=ACMR)

if [ "$status" -ne 0 ]; then
  echo "Commit blocked: remove phone/WeChat details from staged content." >&2
fi

exit "$status"
