#!/usr/bin/env sh

DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

if command -v gradle >/dev/null 2>&1; then
  exec gradle -p "$DIR" "$@"
else
  echo "Gradle is not installed. Please use Android Studio or install Gradle, then run again." >&2
  exit 1
fi
