#!/bin/sh
set -e
rm -f /nakahara_app/tmp/pids/server.pid
exec "$@"