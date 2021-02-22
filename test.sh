#!/usr/bin/env bash

set -ex

rpm -q bash
rpm -qf /usr/bin/test
stat /usr/bin/echo

/usr/bin/test -x /usr/bin/echo || {
  echo "[DEBUG] /usr/bin/echo not executable 1 by /usr/bin/test."
}

test -x /usr/bin/echo || {
  echo "[DEBUG] /usr/bin/echo not executable 2 by test."
  false
}
