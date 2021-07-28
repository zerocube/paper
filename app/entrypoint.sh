#!/usr/bin/env bash

java -Xmx${JAVA_XMX:-1024M} -jar /app/paper.jar \
  --noconsole \
  --nogui \
  "${@}"
