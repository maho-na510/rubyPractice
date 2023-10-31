#!/bin/bash
set -e

rm -f /rubyPravtuce/tmp/pids/server.pid

exec "$@"