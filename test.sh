#!/usr/bin/env bash

set -eux

/usr/bin/test -x /usr/bin/echo || {
  echo "[DEBUG] /usr/bin/echo not executable 1"
}

test -x /usr/bin/echo || {
  echo "[DEBUG] /usr/bin/echo not executable 2"
  false
}
