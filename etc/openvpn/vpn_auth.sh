#!/bin/ash

ALLOWED_USER="john"
ALLOWED_PASS="testtest"
echo "$username"
echo "$password"


if [[ "$password" == "testtest" ]]; then
  echo "ok"
  exit 0
fi

echo "not ok"
exit 1
