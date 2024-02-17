#!/usr/bin/env bash

java \
  -Xmx${JAVA_XMX:-1024M} \
  -Dcom.mojang.eula.agree=true \
  -Dhttps.protocols=TLSv1.1,TLSv1.2 \
  -jar /app/paper.jar \
  --noconsole \
  --nogui \
  "${@}"
