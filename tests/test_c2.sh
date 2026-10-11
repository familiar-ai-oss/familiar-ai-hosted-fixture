#!/bin/sh
# farewell says goodbye: the second line the app prints is "goodbye"
cd "$(dirname "$0")/.." || exit 1
out=$(sh src/app.sh | sed -n 2p)
if [ "$out" = "goodbye" ]; then
  echo "ok: farewell says goodbye"
  exit 0
fi
echo "FAIL: farewell said '$out', expected 'goodbye'"
exit 1
