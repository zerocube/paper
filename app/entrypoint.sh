#!/usr/bin/env bash

java \
  -Xmx${JAVA_XMX:-1024M} \
  -Dcom.mojang.eula.agree=true \
  -jar /app/paper.jar \
  --noconsole \
  --nogui \
  "${@}"
