#!/bin/sh
# greet says hello: the first line the app prints is "hello"
cd "$(dirname "$0")/.." || exit 1
out=$(sh src/app.sh | sed -n 1p)
if [ "$out" = "hello" ]; then
  echo "ok: greet says hello"
  exit 0
fi
echo "FAIL: greet said '$out', expected 'hello'"
exit 1
